﻿using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Web.Services;
using Web.ViewModels;
using Web.ViewModels.HomeViewModels;

namespace Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly IJobService _jobService;

        public HomeController(IJobService jobService)
        {
            _jobService = jobService;
        }

        public async Task<IActionResult> Index()
        {
            var jobs = await _jobService.GetJobsAsync();

            var viewModel = new IndexViewModel
            {
                Jobs = jobs.Select(job => new Web.ViewModels.Job
                {
                    JobId = job.JobId,
                    Title = job.Title,
                    Description = job.Description,
                    Company = job.Company,
                    Location = job.Location,
                    PostedDate = job.PostedDate
                }).ToList()
            };

            return View(viewModel);
        }

        public IActionResult About()
        {
            return View();
        }

        public IActionResult Contact()
        {
            return View();
        }
    }
}
