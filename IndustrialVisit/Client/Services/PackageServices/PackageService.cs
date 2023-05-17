using System.Net.Http.Json;

namespace IndustrialVisit.Client.Services.PackageService;

public class PackageService : IPackageService
{
    public List<Package> packages { get; set; }

    private readonly HttpClient _http;
    public PackageService(HttpClient http)
    {
        _http = http;
        packages = new List<Package>();
    }

    public async Task GetAllPackages()
    {
        var result = await _http.GetFromJsonAsync<List<Package>>($"api/Package");
        if (result != null)
            packages = result;
    }

    public async Task<Package?> GetPackageOfId(int id)
    {
        var result = await _http.GetFromJsonAsync<Package>($"api/Package/{id}");
        if (result != null)
            return result;
        throw new Exception("not found");
    }

    public async Task<List<Package>> GetPackagesOfCategory(string category)
    {
        var result = await _http.GetFromJsonAsync<List<Package>>($"api/Package/{category}");
        if (result != null)
            return result;
        throw new Exception("not found");
    }
}