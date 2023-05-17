namespace IndustrialVisit.Client.Services.PackageService;

public interface IPackageService 
{
    public List<Package> packages { get; set; }

    public Task GetAllPackages();
    public Task<Package?> GetPackageOfId(int id);
    public Task<List<Package>> GetPackagesOfCategory(string category);
}