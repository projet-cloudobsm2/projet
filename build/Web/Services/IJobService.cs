using System.Collections.Generic;
using System.Threading.Tasks;
using Web.Models;

namespace Web.Services
{
    public interface IJobService
    {
        Task<IEnumerable<Job>> GetJobsAsync();
        Task<Job?> GetJobAsync(int jobId);
        Task AddApplicantAsync(JobApplicant applicant);
    }
}
