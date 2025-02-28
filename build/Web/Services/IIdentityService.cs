using System.Threading.Tasks;
using Web.ViewModels;

namespace Web.Services
{
    public interface IIdentityService
    {
        string GetUserId();
        Task<long> GetUserApplicationCountAsync(string userId);
        Task<User?> GetUserAsync(string userId);
    }
}
