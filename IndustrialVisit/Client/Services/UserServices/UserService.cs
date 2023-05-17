using System.Net.Http.Json;

namespace IndustrialVisit.Client.Services.UserService;

public class UserService : IUserService
{
    public UserInfo user { get; set; }

    private readonly HttpClient _http;
    public UserService(HttpClient http)
    {
        _http = http;
        user = new UserInfo();
    }

    public async Task<string> Login(UserInfo userInfo)
    {
        user = userInfo;
        var result = await _http.GetStringAsync(requestUri: $"api/UserCredentials/{userInfo.email}/{userInfo.password}");
        if (result != null)
            return result;

        return "error";
    }

    public async Task<string> Signup(UserInfo userInfo)
    {
        user = userInfo;
        var result = await _http.PostAsJsonAsync($"api/UserCredentials", userInfo);
        if (result != null)
            return result.Content.ReadAsStringAsync().Result;

        throw new Exception("not found");
    }
}