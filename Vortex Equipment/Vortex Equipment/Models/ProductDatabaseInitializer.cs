using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using VortexEquipment.Models;

namespace Vortex_Equipment.Models
{
      public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
        {
            protected override void Seed(ProductContext context)
            {
                GetCategories().ForEach(c => context.Categories.Add(c));
                GetProducts().ForEach(p => context.Products.Add(p));
            }

            private static List<Category> GetCategories()
            {
                var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Treadmills"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Ellipticals"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Exercycles"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Rowers"
                },
                new Category
                {
                    CategoryID = 5,
                    CategoryName = "Fitness Apparels"
                },
                new Category
                {
                    CategoryID = 6,
                    CategoryName = "Footwear"
                },
            };

                return categories;
            }

            private static List<Product> GetProducts()
            {
                var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "NTrack C500 TREADMILL",
                    Description = "The NTrack™ C500 Treadmill, designed by qualified personal trainers, generously features 32 workout programmes including a Heart Rate Control Workout, adjustable FlexSelect™ cushioning, a top speed of 22km/h, 15% incline plus Quick Touch™ controls, and CardioGrip™ heart rate sensors. As if that wasn’t enough, the C500 also features iFIT compatibility, which brings you exciting interactive training. " +
                                  "Power it up and let it go!",
                    ImagePath="treadmill1.png",
                    UnitPrice = 2649.00,
                    CategoryID = 1
               },
                new Product
                {
                    ProductID = 2,
                    ProductName = "Form 315 ZLE ELLIPTICAL CROSSTRAINER",
                    Description = "The Proform® 315 ZLE Elliptical Cross Trainer features fourteen levels of digital resistance and fourteen preset workout apps for a great variety of workouts.",
                    ImagePath="elliptical1.jpg",
                    UnitPrice = 829.00,
                     CategoryID = 2
               },
                new Product
                {
                    ProductID = 3,
                    ProductName = "Form  TOUR DE FRANCE II ANDROID SPIN BIKE",
                    Description = "The Form® 315 ZLE Elliptical Cross Trainer features fourteen levels of digital resistance and fourteen preset workout apps for a great variety of workouts.",
                    ImagePath="exercycle1.jpg",
                    UnitPrice = 2469.00,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "Lite STAMINA ROWING MACHINE",
                    Description = "Stamina Rowing Machine has smooth air resistance action. The Stamina Rower features a 5 function Monitor Displaying Calorie, Distance, Speed, Time and Modes.",
                    ImagePath="rower1.jpg",
                    UnitPrice = 449.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "Lite  HOODED TRACK JACKET",
                    Description = "Lite Hooded Track Jacket will become your ideal all-terrain running companion. In order to keep you dry, warm and comfortable, its innovative fabric repels precipitation, protecting you from all kinds of weather.",                              
                    ImagePath="apparel1.jpg",
                    UnitPrice = 63.95,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 6,
                    ProductName = "Extra THE PROVISIONESS",
                    Description = "The Provisioness™ was created after The Intuition™, adding extra support with a thicker midsole and an optional stability wedge. Designed for women, this shoe assists with fallen arches, overpronation and excessive Q angles. ",
                    ImagePath="footwear1.jpg",
                    UnitPrice = 83.95,
                    CategoryID = 6
                },
                new Product
                {
                    ProductID = 7,
                    ProductName = "Form SPORT 5.0 TREADMILL",
                    Description = "Sport 5.0 Treadmill gives you the power to improve the duration and intensity of your workout. With the 10% Quick Incline function, you can mimic outdoor terrane and personalize your workout to target specific muscle groups. ",
                    ImagePath="treadmill2.jpg",
                    UnitPrice = 1475.00,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 8,
                    ProductName = "Flex  M5 MAX TRAINER",
                    Description = "Save time with the breakthrough 14-minute Max Interval workout or choose from 9 other pre-programmed workouts for longer sessions. ",
                    ImagePath="elliptical2.jpg",
                    UnitPrice = 3995.00,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 9,
                    ProductName = "Lite ULTRA SLP EXERCYCLE",
                    Description = "Ultra SLP exercycle is the latest addition to the 2015 Summer season line up with all the functions and features of a high end market bike at half the price. ",
                    ImagePath="exercycle2.jpg",
                    UnitPrice = 429.00,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 10,
                    ProductName = "Water A1 HOME ROWING MACHINE",
                    Description = "WaterRower® A1 has been handcrafted from solid Ash which provides you with a machine that is robust enough to cope with loads of up to 125kg.",
                    ImagePath="rower2.jpg",
                    UnitPrice = 2295,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 11,
                    ProductName = "Lite FLEECE TRACKPANTS",
                    Description = "Fleece Track Pants give you the most out of your workouts.Lite keep things light and simple in these lightweight track pants, and you'll be glad there's nothing holding you back. ",
                    ImagePath="apparel2.jpg",
                    UnitPrice = 67.95,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 12,
                    ProductName = "Extra THE ONE (WOMEN) SHOES",
                    Description = "A fast, lightly cushioned, do-it-all performance shoe that provides the durability of a training shoe with the weight of a go-fast performance shoe.",
                    ImagePath="footwear2.jpg",
                    UnitPrice = 109.95,
                    CategoryID = 6
                },
                new Product
                {
                    ProductID = 13,
                    ProductName = "Flex TC10 TREADMILL",
                    Description = "C10 combines an elliptical, treadmill and stairclimber to provide you with a low impact high calorie burn workout. ",
                    ImagePath="treadmill3.jpg",
                    UnitPrice = 995.00,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 14,
                    ProductName = "Form  420 E ELLIPTICAL CROSSTRAINER",
                    Description = "A wide stride of up to 20inch allows you to maximise your results while adding the Soft Touch Arms will give you a full body workout! Made from Commercial-Gauge Solid Steel, this machine can handle even the most intense workouts and won't let you down.",
                    ImagePath="elliptical3.jpg",
                    UnitPrice = 1395.00,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 15,
                    ProductName = "Gold 400R CYCLE TRAINER",
                    Description = "400R Cycle Trainer features an integrated tablet holder that seats your device safely above the console. Get superior comfort and support from the oversized, adjustable chair-like seat. ",
                    ImagePath="exercycle3.jpg",
                    UnitPrice = 699,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 16,
                    ProductName = "Lite R9 ROWING MACHINE",
                    Description = "R9 Rower is perfect for the home, small gym or Personal Training Studio, Corporate Gymnasium or hotel gymnasium. Get the body you've always wanted in the comfort of your own home! ",
                    ImagePath="rower3.jpg",
                    UnitPrice = 1549.00,
                    CategoryID = 4
                }
            };

                return products;
            }
        }
    }
