using crud.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace crud.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MyController : ControllerBase
    {
        private readonly CrudContext db;

        public MyController(CrudContext _db)
        {
            db = _db;
        }

        [HttpGet]
        public IActionResult GetProducts()
        {
            return Ok(db.Cruds.ToList());
        }   
        [HttpPost]
        public IActionResult AddProducts(Crud crud)
        {
            db.Cruds.Add(crud);
            db.SaveChanges();
            return StatusCode(201);
        } 
        [HttpDelete]
        public IActionResult DeleteProduct(int id)
        {
            var product = db.Cruds.Find(id);
            db.Cruds.Remove(product);
            db.SaveChanges();
            return StatusCode(201);
        }
    }
}
