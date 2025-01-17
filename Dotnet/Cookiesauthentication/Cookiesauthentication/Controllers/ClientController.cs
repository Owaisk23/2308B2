using Microsoft.AspNetCore.Mvc;

namespace Cookiesauthentication.Controllers
{
    public class ClientController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
