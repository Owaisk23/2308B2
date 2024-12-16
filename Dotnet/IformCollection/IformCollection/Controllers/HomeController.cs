using IformCollection.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace IformCollection.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Index(string email, string pwd)
        {
            if(email == "admin@gmail.com" &&  pwd == "admin123")
            {
                @TempData["email"] = "Hello this is your " + email;
                @TempData.Keep();
                return RedirectToAction("Privacy");
            }
            return View();
        }
        [HttpGet]
        public IActionResult my()
        {
            return View();
        }
        [HttpPost]
        public IActionResult my(IFormCollection frm)
        {
            string name = frm["email"];
            string pass = frm["pwd"];
            ViewBag.a = name;

            return View();
        }

        public IActionResult Privacy()
        {
            @TempData.Keep();
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}