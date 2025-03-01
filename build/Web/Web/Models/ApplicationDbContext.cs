using Microsoft.EntityFrameworkCore;
using Web.Models;  // Assure-toi que ce namespace est bien référencé

namespace Web.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Job> Jobs { get; set; }
        public DbSet<JobApplicant> JobApplicants { get; set; }
    }
}
