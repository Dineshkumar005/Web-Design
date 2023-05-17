global using IndustrialVisit.Shared;
using IndustrialVisit.Client.Services.PackageService;
using IndustrialVisit.Client.Services.DetailsService;
using IndustrialVisit.Client.Services.UserService;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using IndustrialVisit.Client;
using Blazored.SessionStorage;
using Microsoft.AspNetCore.Components.Authorization;

var builder = WebAssemblyHostBuilder.CreateDefault(args);
builder.RootComponents.Add<App>("#app");
builder.RootComponents.Add<HeadOutlet>("head::after");

builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });

builder.Services.AddScoped<IPackageService,PackageService>();
builder.Services.AddScoped<IDetailsService,DetailsService>();
builder.Services.AddScoped<IUserService, UserService>();
builder.Services.AddBlazoredSessionStorage();
builder.Services.AddOptions();
builder.Services.AddAuthorizationCore();
builder.Services.AddScoped<AuthenticationStateProvider,CustomAuthStateProvider>();

await builder.Build().RunAsync();
