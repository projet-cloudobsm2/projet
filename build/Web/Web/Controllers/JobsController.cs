﻿using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Web.Services;
using Web.ViewModels;
using Web.ViewModels.JobsViewModels;
using Web.Models; // Ajout pour s'assurer que Job et JobApplicant sont bien reconnus

namespace Web.Controllers
{
    public class JobsController : Controller
    {
        private readonly IJobService _jobService;
        private readonly IIdentityService _identityService;

        public JobsController(IJobService jobService, IIdentityService identityService)
        {
            _jobService = jobService;
            _identityService = identityService;
        }

        // GET jobs/apply/5
        [HttpGet("jobs/apply/{id}")]
        public async Task<IActionResult> Apply(int id)
        {
            var job = await _jobService.GetJobAsync(id);
            var applicant = await _identityService.GetUserAsync("1"); // Hardcoded user in identity service
            return View(new ApplyViewModel(
            new Web.ViewModels.Job
            {
                JobId = job.JobId,
                Title = job.Title,
                Description = job.Description,
                Company = job.Company,
                Location = job.Location,
                PostedDate = job.PostedDate
            },
            applicant   
            ));

        }

        // POST jobs/apply
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Apply(JobApplicationViewModel model)
        {
            await _jobService.AddApplicantAsync(new Web.Models.JobApplicant
            {
                Email = model.Applicant.Email,
                Name = model.Applicant.Name,
                ApplicantId = Convert.ToInt32(model.Applicant.Id),
                JobId = model.Job.JobId
            });

            return RedirectToAction("ApplySuccess", new { jobId = model.Job.JobId, applicantId = model.Applicant.Id });
        }

        // GET jobs/apply/success/5
        [HttpGet("jobs/apply/success/{id}")]
        public async Task<IActionResult> ApplySuccess(int jobId, string applicantId)
        {
            await Task.Delay(500); // Pause pour permettre la mise à jour des données
            var job = await _jobService.GetJobAsync(jobId);
            var applicationCount = await _identityService.GetUserApplicationCountAsync(applicantId);
            return View(new ApplySuccessViewModel(
            new Web.ViewModels.Job
            {
                JobId = job.JobId,
                Title = job.Title,
                Description = job.Description,
                Company = job.Company,
                Location = job.Location,
                PostedDate = job.PostedDate
            },
            applicationCount
        ));

        }
    }
}
