using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

namespace IndustrialVisit.Server.Controllers;

[ApiController]
[Route("api/[Controller]")]
public class DetailsController : ControllerBase
{
    private readonly DataContext _context;

    public DetailsController(DataContext context)
    {
        _context = context;
    }


    [HttpGet("{id:int}")]
    public async Task<ActionResult<List<Place>>> GetPackageDetailsOf(int id)
    {
        var result = await _context.packages.FirstOrDefaultAsync(h => h.PackId == id);
        if (result != null)
        {
            result.Places = await _context.places.Where(x => x.PackId == id).ToListAsync();
            return Ok(result);
        }
        return NotFound("no data");
    }
}