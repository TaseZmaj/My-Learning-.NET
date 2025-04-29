using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AV05.Controllers
{
    public class UsersController : Controller
    {
        // GET: User
        public string Index()
        {
            return "This is the default user page!";
        }
        public new ActionResult User(int? id, string name)
        {
            if (id == null) { id = 1; }
            if (name == null) { name = "Admin"; }
            ViewBag.Id = id;
            ViewBag.Name = name;

            return View();

            //return $"Welcome user {name} with id: {id}";
        }
    }
}