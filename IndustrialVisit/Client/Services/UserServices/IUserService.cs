
namespace IndustrialVisit.Client.Services.UserService;

public interface IUserService
{
    UserInfo user { get; set; }

    public Task<string> Login(UserInfo userInfo);
    public Task<string> Signup(UserInfo userInfo);

}