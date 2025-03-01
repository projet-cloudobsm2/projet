namespace Web.ViewModels.JobsViewModels
{
    public class JobApplicationViewModel
    {
        public JobApplicant Applicant { get; set; } = new JobApplicant();
        public Job Job { get; set; } = new Job();
    }
}
