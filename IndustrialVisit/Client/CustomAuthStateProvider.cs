using System.Security.Claims;
using Blazored.SessionStorage;
using Microsoft.AspNetCore.Components.Authorization;

namespace IndustrialVisit.Client;

public class CustomAuthStateProvider : AuthenticationStateProvider
{
    private readonly ISessionStorageService _sessionSorage;
    public CustomAuthStateProvider(ISessionStorageService sessionStorage)
    {
        _sessionSorage = sessionStorage;
    }

    public override async Task<AuthenticationState> GetAuthenticationStateAsync()
    {
        var state = new AuthenticationState(new ClaimsPrincipal());

        string username = await _sessionSorage.GetItemAsStringAsync("username");
        if(!string.IsNullOrEmpty(username))
        {
            var identity = new ClaimsIdentity(new[]
            {
                new Claim(ClaimTypes.Name,username)
            },"test authendication state");

            state = new AuthenticationState(new ClaimsPrincipal(identity));
        }

        NotifyAuthenticationStateChanged(Task.FromResult(state));

        return state;
    }
}