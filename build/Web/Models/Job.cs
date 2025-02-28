namespace Web.Models
{
    public class Job
    {
        public int JobId { get; set; }
        public string Title { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public string Company { get; set; } = string.Empty;
        public DateTime PostedDate { get; set; } = DateTime.Now;
        public string Location { get; set; } = string.Empty;
    }
}
