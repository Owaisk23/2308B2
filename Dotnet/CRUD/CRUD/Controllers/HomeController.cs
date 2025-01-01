using CRUD.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace CRUD.Controllers
{
    public class HomeController : Controller
    {
        private readonly GroceryContext db;

        public HomeController(GroceryContext _db)
        {
            db = _db;
        }

        public IActionResult Index()
        {
            return View(db.Groceries.ToList());
        }

        [HttpPost]
        public IActionResult Index(string searchQuery)
        {
            var products = string.IsNullOrEmpty(searchQuery) 
                ? db.Groceries.ToList() 
                    : db.Groceries
                        .Where(p => p.Name.Contains(searchQuery) || p.Desc.Contains(searchQuery))
                        .ToList();

            ViewData["SearchQuery"] = searchQuery;
            return View(products);
        }

        

        public IActionResult AddProduct()
        {
            return View();
        }

        [HttpPost]
        public IActionResult AddProduct(Grocery grocery)
        {
            db.Groceries.Add(grocery);
            db.SaveChanges();
            return RedirectToAction("Index");
        }


        public IActionResult EditProduct(int id)
        {
            var product = db.Groceries.FirstOrDefault(x => x.Id == id);
            return View(product);
        }

        [HttpPost]
        public IActionResult EditProduct(Grocery grocery)
        {
            db.Groceries.Update(grocery);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult DeleteProduct(int id)
        {
            var product = db.Groceries.FirstOrDefault(x => x.Id == id);
            return View(product);
        }
        [HttpPost]
        public IActionResult DeleteProduct(Grocery grocery)
        {
            db.Groceries.Remove(grocery);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult DetailProduct(int id)
        {
            var product = db.Groceries.FirstOrDefault(x => x.Id == id);
            return View(product);
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