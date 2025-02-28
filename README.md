# projet
```
projet
├─ build
│  ├─ Database
│  │  ├─ Dockerfile
│  │  ├─ entrypoint.sh
│  │  ├─ SqlCmdScript.sql
│  │  └─ SqlCmdStartup.sh
│  ├─ Services
│  │  ├─ Applicants.Api
│  │  │  ├─ applicants.api.csproj
│  │  │  ├─ appsettings.Development.json
│  │  │  ├─ appsettings.json
│  │  │  ├─ Controllers
│  │  │  │  └─ ApplicantsController.cs
│  │  │  ├─ Dockerfile
│  │  │  ├─ Dockerfile.debug
│  │  │  ├─ Messaging
│  │  │  │  └─ Consumers
│  │  │  │     └─ ApplicantAppliedEventConsumer.cs
│  │  │  ├─ Models
│  │  │  │  ├─ Applicant.cs
│  │  │  │  └─ ApplicantSubmission.cs
│  │  │  ├─ Program.cs
│  │  │  ├─ Services
│  │  │  │  └─ ApplicantRepository.cs
│  │  │  └─ Startup.cs
│  │  ├─ Identity.Api
│  │  │  ├─ appsettings.Development.json
│  │  │  ├─ appsettings.json
│  │  │  ├─ Controllers
│  │  │  │  └─ UsersController.cs
│  │  │  ├─ Dockerfile
│  │  │  ├─ Dockerfile.debug
│  │  │  ├─ Identity.Api.csproj
│  │  │  ├─ Messaging
│  │  │  │  └─ Consumers
│  │  │  │     └─ ApplicantAppliedEventConsumer.cs
│  │  │  ├─ Models
│  │  │  │  └─ User.cs
│  │  │  ├─ Program.cs
│  │  │  ├─ Services
│  │  │  │  ├─ IdentityRepository.cs
│  │  │  │  └─ IIdentityRepository.cs
│  │  │  └─ Startup.cs
│  │  └─ Jobs.Api
│  │     ├─ appsettings.Development.json
│  │     ├─ appsettings.json
│  │     ├─ Controllers
│  │     │  └─ JobsController.cs
│  │     ├─ Dockerfile
│  │     ├─ Dockerfile.debug
│  │     ├─ jobs.api.csproj
│  │     ├─ Models
│  │     │  ├─ Job.cs
│  │     │  └─ JobApplicant.cs
│  │     ├─ Program.cs
│  │     ├─ Services
│  │     │  ├─ IJobRepository.cs
│  │     │  └─ JobRepository.cs
│  │     └─ Startup.cs
│  └─ Web
│     ├─ .bowerrc
│     ├─ appsettings.Development.json
│     ├─ appsettings.json
│     ├─ bower.json
│     ├─ bundleconfig.json
│     ├─ Config
│     │  └─ ApiConfig.cs
│     ├─ Controllers
│     │  ├─ HomeController.cs
│     │  └─ JobsController.cs
│     ├─ Dockerfile
│     ├─ Dockerfile.debug
│     ├─ Models
│     │  └─ ErrorViewModel.cs
│     ├─ Program.cs
│     ├─ Services
│     │  ├─ IdentityService.cs
│     │  ├─ IIdentityService.cs
│     │  ├─ IJobService.cs
│     │  └─ JobService.cs
│     ├─ Startup.cs
│     ├─ ViewModels
│     │  ├─ HomeViewModels
│     │  │  └─ IndexViewModel.cs
│     │  ├─ Job.cs
│     │  ├─ JobApplicant.cs
│     │  ├─ JobsViewModels
│     │  │  ├─ ApplySuccessViewModel.cs
│     │  │  ├─ ApplyViewModel.cs
│     │  │  └─ JobApplicationViewModel.cs
│     │  └─ User.cs
│     ├─ Views
│     │  ├─ Home
│     │  │  ├─ About.cshtml
│     │  │  ├─ Contact.cshtml
│     │  │  └─ Index.cshtml
│     │  ├─ Jobs
│     │  │  ├─ Apply.cshtml
│     │  │  └─ ApplySuccess.cshtml
│     │  ├─ Shared
│     │  │  ├─ Error.cshtml
│     │  │  ├─ _Layout.cshtml
│     │  │  └─ _ValidationScriptsPartial.cshtml
│     │  ├─ _ViewImports.cshtml
│     │  └─ _ViewStart.cshtml
│     ├─ Web.csproj
│     └─ wwwroot
│        ├─ css
│        │  ├─ site.css
│        │  └─ site.min.css
│        ├─ favicon.ico
│        ├─ images
│        │  ├─ banner1.svg
│        │  ├─ banner2.svg
│        │  ├─ banner3.svg
│        │  └─ banner4.svg
│        ├─ js
│        │  ├─ site.js
│        │  └─ site.min.js
│        └─ lib
│           ├─ bootstrap
│           │  ├─ .bower.json
│           │  ├─ dist
│           │  │  ├─ css
│           │  │  │  ├─ bootstrap-theme.css
│           │  │  │  ├─ bootstrap-theme.css.map
│           │  │  │  ├─ bootstrap-theme.min.css
│           │  │  │  ├─ bootstrap-theme.min.css.map
│           │  │  │  ├─ bootstrap.css
│           │  │  │  ├─ bootstrap.css.map
│           │  │  │  ├─ bootstrap.min.css
│           │  │  │  └─ bootstrap.min.css.map
│           │  │  ├─ fonts
│           │  │  │  ├─ glyphicons-halflings-regular.eot
│           │  │  │  ├─ glyphicons-halflings-regular.svg
│           │  │  │  ├─ glyphicons-halflings-regular.ttf
│           │  │  │  ├─ glyphicons-halflings-regular.woff
│           │  │  │  └─ glyphicons-halflings-regular.woff2
│           │  │  └─ js
│           │  │     ├─ bootstrap.js
│           │  │     ├─ bootstrap.min.js
│           │  │     └─ npm.js
│           │  └─ LICENSE
│           ├─ jquery
│           │  ├─ .bower.json
│           │  ├─ dist
│           │  │  ├─ jquery.js
│           │  │  ├─ jquery.min.js
│           │  │  └─ jquery.min.map
│           │  └─ LICENSE.txt
│           ├─ jquery-validation
│           │  ├─ .bower.json
│           │  ├─ dist
│           │  │  ├─ additional-methods.js
│           │  │  ├─ additional-methods.min.js
│           │  │  ├─ jquery.validate.js
│           │  │  └─ jquery.validate.min.js
│           │  └─ LICENSE.md
│           └─ jquery-validation-unobtrusive
│              ├─ .bower.json
│              ├─ jquery.validate.unobtrusive.js
│              └─ jquery.validate.unobtrusive.min.js
├─ deploy
│  ├─ Database
│  ├─ install_nginx_controller.sh
│  ├─ Prometheus
│  ├─ run.sh
│  ├─ Services.Applicants.Api
│  ├─ Services.Identity.Api
│  ├─ Services.Jobs.Api
│  └─ Web
├─ helm-package
└─ README.md

```
```
projet
├─ build
│  ├─ Database
│  │  ├─ Dockerfile
│  │  ├─ entrypoint.sh
│  │  ├─ SqlCmdScript.sql
│  │  └─ SqlCmdStartup.sh
│  ├─ Services
│  │  ├─ Applicants.Api
│  │  │  ├─ applicants.api.csproj
│  │  │  ├─ appsettings.Development.json
│  │  │  ├─ appsettings.json
│  │  │  ├─ Controllers
│  │  │  │  └─ ApplicantsController.cs
│  │  │  ├─ Dockerfile
│  │  │  ├─ Dockerfile.debug
│  │  │  ├─ Messaging
│  │  │  │  └─ Consumers
│  │  │  │     └─ ApplicantAppliedEventConsumer.cs
│  │  │  ├─ Models
│  │  │  │  ├─ Applicant.cs
│  │  │  │  └─ ApplicantSubmission.cs
│  │  │  ├─ Program.cs
│  │  │  ├─ Services
│  │  │  │  └─ ApplicantRepository.cs
│  │  │  └─ Startup.cs
│  │  ├─ Identity.Api
│  │  │  ├─ appsettings.Development.json
│  │  │  ├─ appsettings.json
│  │  │  ├─ Controllers
│  │  │  │  └─ UsersController.cs
│  │  │  ├─ Dockerfile
│  │  │  ├─ Dockerfile.debug
│  │  │  ├─ Identity.Api.csproj
│  │  │  ├─ Messaging
│  │  │  │  └─ Consumers
│  │  │  │     └─ ApplicantAppliedEventConsumer.cs
│  │  │  ├─ Models
│  │  │  │  └─ User.cs
│  │  │  ├─ Program.cs
│  │  │  ├─ Services
│  │  │  │  ├─ IdentityRepository.cs
│  │  │  │  └─ IIdentityRepository.cs
│  │  │  └─ Startup.cs
│  │  └─ Jobs.Api
│  │     ├─ appsettings.Development.json
│  │     ├─ appsettings.json
│  │     ├─ Controllers
│  │     │  └─ JobsController.cs
│  │     ├─ Dockerfile
│  │     ├─ Dockerfile.debug
│  │     ├─ jobs.api.csproj
│  │     ├─ Models
│  │     │  ├─ Job.cs
│  │     │  └─ JobApplicant.cs
│  │     ├─ Program.cs
│  │     ├─ Services
│  │     │  ├─ IJobRepository.cs
│  │     │  └─ JobRepository.cs
│  │     └─ Startup.cs
│  └─ Web
│     ├─ .bowerrc
│     ├─ appsettings.Development.json
│     ├─ appsettings.json
│     ├─ bin
│     │  └─ Debug
│     │     └─ net8.0
│     ├─ bower.json
│     ├─ bundleconfig.json
│     ├─ Config
│     │  └─ ApiConfig.cs
│     ├─ Controllers
│     │  ├─ HomeController.cs
│     │  └─ JobsController.cs
│     ├─ Dockerfile
│     ├─ Dockerfile.debug
│     ├─ Models
│     │  ├─ ApplicationDbContext.cs
│     │  ├─ ErrorViewModel.cs
│     │  ├─ Job.cs
│     │  └─ JobApplicant.cs
│     ├─ obj
│     │  ├─ Debug
│     │  │  └─ net8.0
│     │  │     ├─ .NETCoreApp,Version=v8.0.AssemblyAttributes.cs
│     │  │     ├─ ref
│     │  │     ├─ refint
│     │  │     ├─ staticwebassets
│     │  │     ├─ Web.AssemblyInfo.cs
│     │  │     ├─ Web.AssemblyInfoInputs.cache
│     │  │     ├─ Web.assets.cache
│     │  │     ├─ Web.csproj.AssemblyReference.cache
│     │  │     ├─ Web.csproj.CoreCompileInputs.cache
│     │  │     ├─ Web.csproj.FileListAbsolute.txt
│     │  │     ├─ Web.GeneratedMSBuildEditorConfig.editorconfig
│     │  │     ├─ Web.GlobalUsings.g.cs
│     │  │     ├─ Web.MvcApplicationPartsAssemblyInfo.cache
│     │  │     ├─ Web.RazorAssemblyInfo.cache
│     │  │     ├─ Web.RazorAssemblyInfo.cs
│     │  │     └─ Web.sourcelink.json
│     │  ├─ project.assets.json
│     │  ├─ project.nuget.cache
│     │  ├─ Web.csproj.EntityFrameworkCore.targets
│     │  ├─ Web.csproj.nuget.dgspec.json
│     │  ├─ Web.csproj.nuget.g.props
│     │  └─ Web.csproj.nuget.g.targets
│     ├─ Program.cs
│     ├─ Services
│     │  ├─ IdentityService.cs
│     │  ├─ IIdentityService.cs
│     │  ├─ IJobService.cs
│     │  └─ JobService.cs
│     ├─ Startup.cs
│     ├─ ViewModels
│     │  ├─ HomeViewModels
│     │  │  └─ IndexViewModel.cs
│     │  ├─ Job.cs
│     │  ├─ JobApplicant.cs
│     │  ├─ JobsViewModels
│     │  │  ├─ ApplySuccessViewModel.cs
│     │  │  ├─ ApplyViewModel.cs
│     │  │  └─ JobApplicationViewModel.cs
│     │  └─ User.cs
│     ├─ Views
│     │  ├─ Home
│     │  │  ├─ About.cshtml
│     │  │  ├─ Contact.cshtml
│     │  │  └─ Index.cshtml
│     │  ├─ Jobs
│     │  │  ├─ Apply.cshtml
│     │  │  └─ ApplySuccess.cshtml
│     │  ├─ Shared
│     │  │  ├─ Error.cshtml
│     │  │  ├─ _Layout.cshtml
│     │  │  └─ _ValidationScriptsPartial.cshtml
│     │  ├─ _ViewImports.cshtml
│     │  └─ _ViewStart.cshtml
│     ├─ Web.csproj
│     └─ wwwroot
│        ├─ css
│        │  ├─ site.css
│        │  └─ site.min.css
│        ├─ favicon.ico
│        ├─ images
│        │  ├─ banner1.svg
│        │  ├─ banner2.svg
│        │  ├─ banner3.svg
│        │  └─ banner4.svg
│        ├─ js
│        │  ├─ site.js
│        │  └─ site.min.js
│        └─ lib
│           ├─ bootstrap
│           │  ├─ .bower.json
│           │  ├─ dist
│           │  │  ├─ css
│           │  │  │  ├─ bootstrap-theme.css
│           │  │  │  ├─ bootstrap-theme.css.map
│           │  │  │  ├─ bootstrap-theme.min.css
│           │  │  │  ├─ bootstrap-theme.min.css.map
│           │  │  │  ├─ bootstrap.css
│           │  │  │  ├─ bootstrap.css.map
│           │  │  │  ├─ bootstrap.min.css
│           │  │  │  └─ bootstrap.min.css.map
│           │  │  ├─ fonts
│           │  │  │  ├─ glyphicons-halflings-regular.eot
│           │  │  │  ├─ glyphicons-halflings-regular.svg
│           │  │  │  ├─ glyphicons-halflings-regular.ttf
│           │  │  │  ├─ glyphicons-halflings-regular.woff
│           │  │  │  └─ glyphicons-halflings-regular.woff2
│           │  │  └─ js
│           │  │     ├─ bootstrap.js
│           │  │     ├─ bootstrap.min.js
│           │  │     └─ npm.js
│           │  └─ LICENSE
│           ├─ jquery
│           │  ├─ .bower.json
│           │  ├─ dist
│           │  │  ├─ jquery.js
│           │  │  ├─ jquery.min.js
│           │  │  └─ jquery.min.map
│           │  └─ LICENSE.txt
│           ├─ jquery-validation
│           │  ├─ .bower.json
│           │  ├─ dist
│           │  │  ├─ additional-methods.js
│           │  │  ├─ additional-methods.min.js
│           │  │  ├─ jquery.validate.js
│           │  │  └─ jquery.validate.min.js
│           │  └─ LICENSE.md
│           └─ jquery-validation-unobtrusive
│              ├─ .bower.json
│              ├─ jquery.validate.unobtrusive.js
│              └─ jquery.validate.unobtrusive.min.js
├─ deploy
│  ├─ Database
│  ├─ install_nginx_controller.sh
│  ├─ Prometheus
│  ├─ run.sh
│  ├─ Services.Applicants.Api
│  ├─ Services.Identity.Api
│  ├─ Services.Jobs.Api
│  └─ Web
├─ helm-package
└─ README.md

```