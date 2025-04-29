using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Permissions;
using System.Web;

namespace AV05.Models
{
    public class Movie
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string DownloadURL { get; set; }
        public string ImgUrl { get; set; }
        public float Rating { get; set; }
    }
}