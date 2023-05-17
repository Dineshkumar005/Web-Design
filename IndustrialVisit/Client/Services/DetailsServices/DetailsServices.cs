using System.Net.Http.Json;

namespace IndustrialVisit.Client.Services.DetailsService;

public class DetailsService : IDetailsService
{
    public Package package { get; set; }
    

    private readonly HttpClient _http;
    public DetailsService(HttpClient http)
    {
        _http = http;
        package = new Package();
    }


    public async Task GetDetailsOfId(int id)
    {
        var result = await _http.GetFromJsonAsync<Package>($"api/Details/{id}");
        if(result!=null){
            package = result;
        }
    }
}