using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using IndustrialVisit.Client.Services.UserService;

namespace IndustrialVisit.Server.Controllers;

[ApiController]
[Route("api/[Controller]")]
public class UserCredentialsController : ControllerBase
{
    private readonly DataContext _context;

    public UserCredentialsController(DataContext context)
    {
        _context = context;
    }


    [HttpGet("{email}/{password}")]
    public async Task<ActionResult<string>> IsUserExist(string email, string password)
    {
        
        var result = await _context.userInfo.FirstOrDefaultAsync(uc => email == uc.email);
        if (result != null)
        {
            if (result.password == password)
                return Ok("found " +result.username);
            return Ok("incorrect password");
            
        }
        return Ok("not found");
    }

    [HttpPost]
    public async Task<ActionResult<string>> UserRegister(UserInfo user)
    {

        var result = await _context.userInfo.FirstOrDefaultAsync(uc => user.email == uc.email);
        if (result != null)
            return "user exists";


        await _context.userInfo.AddAsync(user);
        await _context.SaveChangesAsync();
        result = await _context.userInfo.FirstOrDefaultAsync(uc => user.email == uc.email);
        if (result != null)
            return "registered successfully";

        return Ok("failed to register");
    }
}