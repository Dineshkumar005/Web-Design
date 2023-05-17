using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

namespace IndustrialVisit.Server.Controllers;

[ApiController]
[Route("api/[Controller]")]
public class PackageController : ControllerBase
{
    private readonly DataContext _context;

    public PackageController(DataContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<List<Package>>> GetAllPackages(){
        var packages= await _context.packages.ToListAsync();
        return Ok(packages);
    }

    [HttpGet("{id:int}")]
    public async Task<ActionResult<List<Package>>> GetPackageDetailsOf(int id)
    {
        var result = await _context.packages.FirstOrDefaultAsync(h => h.PackId == id);
        if (result == null)
            return NotFound("no data");

        return Ok(result);
    }

    [HttpGet("{category}")]
    public async Task<ActionResult<List<Package>>> GetPackagesOfCategory(string category){
        var result= await _context.packages.Where(pack => pack.Category.Equals(category)).ToListAsync();
        if (result == null)
            return NotFound("no data");

        return Ok(result);
    }
}