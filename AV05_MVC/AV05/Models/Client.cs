﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AV05.Models
{
    public class Client
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string MovieCard { get; set; }
    }
}