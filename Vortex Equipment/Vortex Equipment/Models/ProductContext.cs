using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using Vortex_Equipment.Models;
using VortexEquipment.Models;

namespace VortexEquipment.Models
{
            public class ProductContext : DbContext
        {
            public ProductContext() : base("VortexEquipment")
            {
            }
            public DbSet<Category> Categories { get; set; }
            public DbSet<Product> Products { get; set; }
        }
}