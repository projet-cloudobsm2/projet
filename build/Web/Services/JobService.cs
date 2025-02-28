using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web.Models;

namespace Web.Services
{
    public class JobService : IJobService
    {
        private readonly List<Job> _jobs = new();
        private readonly List<JobApplicant> _jobApplicants = new();

        public async Task<IEnumerable<Job>> GetJobsAsync()
        {
            return await Task.FromResult(_jobs);
        }

        public async Task<Job?> GetJobAsync(int jobId)
        {
            return await Task.FromResult(_jobs.FirstOrDefault(job => job.JobId == jobId));
        }

        public async Task AddApplicantAsync(JobApplicant applicant)
        {
            _jobApplicants.Add(applicant);
            await Task.CompletedTask;
        }
    }
}