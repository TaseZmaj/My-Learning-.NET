using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AV05.Models
{
    public class MovieRentals
    {
        public Movie movie { get; set; }
        public List<Client> clients { get; set; }

        public MovieRentals(List<Client> clients, Movie movie)
        {
            this.clients = clients;
            this.movie = movie;
        }
    }
}