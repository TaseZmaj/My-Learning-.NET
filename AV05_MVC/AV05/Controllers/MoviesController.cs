using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AV05.Models;

namespace AV05.Controllers
{
    public class MoviesController : Controller
    {
        public static Movie movie = new Movie()
        {
            Name = "Shrek",
            Rating = 5,
            DownloadURL = "#",
            ImgUrl = "https://m.media-amazon.com/images/I/91MedvX9YjL.jpg",
        };
        public static List<Client> clients = new List<Client>()
        {
            new Client()
            {
                Name="Aleksandar S.",
                MovieCard="1234",
                Address="Ul.Moskovska br.12",
                Phone="070 123 456",
            },
            new Client()
            {
                Name="Stefan T.",
                MovieCard="4567",
                Address="Ul.Teodosij Gologanov br.23",
                Phone="075 333 444",
            },
            new Client()
            {
                Name="Kristijan D.",
                MovieCard="1928",
                Address="Ul.Makedonska br.1",
                Phone="078 222 111",
            },
        };

        // GET: Movies
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Random()
        {
            MovieRentals model = new MovieRentals(clients, movie);
            return View(model);
        }

        public ActionResult ShowClient(int id)
        {
            return View(clients[id]);
        }
    }
}