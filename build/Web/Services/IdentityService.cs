using Microsoft.AspNetCore.Http;
using System.Security.Claims;
using System.Threading.Tasks;
using Web.ViewModels;

namespace Web.Services
{
    public class IdentityService : IIdentityService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;

        public IdentityService(IHttpContextAccessor httpContextAccessor)
        {
            _httpContextAccessor = httpContextAccessor;
        }

        public string GetUserId()
        {
            return _httpContextAccessor.HttpContext?.User?.FindFirst(ClaimTypes.NameIdentifier)?.Value ?? string.Empty;
        }

        public async Task<long> GetUserApplicationCountAsync(string userId)
        {
            return await Task.FromResult(5);
        }

        public async Task<User?> GetUserAsync(string userId)
        {
            return await Task.FromResult(new User { Id = userId, Name = "Test User", Email = "test@example.com" });
        }
    }
}