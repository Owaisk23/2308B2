using Firstproject.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace Firstproject.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {

            @ViewBag.car = "Porsche";
            @ViewData["carName"] = "BMW M5";

            @TempData["carDelivery"] = "Success";
            @TempData.Keep();

            return View();
        }
        public IActionResult About()
        {
            @TempData.Keep();
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}