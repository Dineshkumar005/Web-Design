namespace IndustrialVisit.Client.Services.DetailsService;

public interface IDetailsService 
{
    public Package package { get; set; }

    public Task GetDetailsOfId(int id);
}