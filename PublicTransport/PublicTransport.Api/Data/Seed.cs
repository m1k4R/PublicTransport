using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Identity;
using PublicTransport.Api.Models;

namespace PublicTransport.Api.Data
{
    public class Seed
    {
        private readonly UserManager<User> _userManager;
        private readonly RoleManager<Role> _roleManager;
        private readonly DataContext _context;

        public Seed(UserManager<User> userManager,RoleManager<Role> roleManager, DataContext context)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _context = context;
            _context.Database.EnsureCreated();
        }

        public void SeedUsers()
        {
            if (!_userManager.Users.Any())
            {
                var roles = new List<Role>
                {
                    new Role() {Name = "Passenger"},
                    new Role() {Name = "Controller"},
                    new Role() {Name = "Admin"}
                };

                foreach (var role in roles)
                {
                    _roleManager.CreateAsync(role).Wait();
                }

                var userList = new List<User>();

                for (int i = 0; i < 5; i++)
                {
                    var user = new User()
                    {
                        UserName = $"User{i}",
                        Name = $"Pera {i}",
                        Surname = $"Peric {i}",
                        Email = $"user{i}@gmail.com",
                        UserType = "Regular",
                        Address = new Address()
                        {
                            City = "Grad",
                            Street = "Ulica",
                            Number = "Broj"
                        },
                        Verified = false,
                        AccountStatus = "Pending activation"
                    };

                    userList.Add(user);
                   
                }

                _userManager.CreateAsync(userList[0], "password").Wait();
                _userManager.AddToRoleAsync(userList[0], "Passenger").Wait();

                _userManager.CreateAsync(userList[1], "password").Wait();
                _userManager.AddToRoleAsync(userList[1], "Passenger").Wait();

                _userManager.CreateAsync(userList[2], "password").Wait();
                _userManager.AddToRoleAsync(userList[2], "Passenger").Wait();

                _userManager.CreateAsync(userList[3], "password").Wait();
                _userManager.AddToRoleAsync(userList[3], "Passenger").Wait();

                _userManager.CreateAsync(userList[4], "password").Wait();
                _userManager.AddToRoleAsync(userList[4], "Passenger").Wait();

                var admin = new User { UserName = "Admin", Email = "admin@publictransport.com"};
                IdentityResult result = _userManager.CreateAsync(admin, "password").Result;

                if (result.Succeeded)
                {
                    var adm = _userManager.FindByNameAsync("Admin").Result;
                    _userManager.AddToRoleAsync(adm, "Admin").Wait();
                }

                var controller = new User { UserName = "Controller", Email = "controller@publictransport.com"};
                IdentityResult res = _userManager.CreateAsync(controller, "password").Result;

                if (res.Succeeded)
                {
                    var con = _userManager.FindByNameAsync("Controller").Result;
                    _userManager.AddToRoleAsync(con, "Controller" ).Wait();
                }
            }
        }

        public void SeedStations()
        {
            List<Station> stations8 = new List<Station>();
            List<Station> stations4 = new List<Station>();
            List<StationLine> stlines8 = new List<StationLine>();
            List<StationLine> stlines4 = new List<StationLine>();
            Line lines8 = new Line();
            Line lines4 = new Line();

            if (!_context.Stations.Any())
            {
                Station station = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Jovana Ducica"
                    },
                    Location = new Location()
                    {
                        X = 45.248643,
                        Y = 19.792551
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station);
                stations8.Add(station);

                Station station2 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.250305,
                        Y = 19.791516
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station2);
                stations8.Add(station2);

                Station station3 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.253440,
                        Y = 19.789697
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station3);
                stations8.Add(station3);

                Station station4 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.255003,
                        Y = 19.794144
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station4);
                stations8.Add(station4);

                Station station5 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.251204,
                        Y = 19.796821
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station5);
                stations8.Add(station5);

                Station station6 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.251023,
                        Y = 19.798561
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station6);
                stations8.Add(station6);

                Station station7 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.254104,
                        Y = 19.807508
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station7);
                stations8.Add(station7);

                Station station8 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.257155,
                        Y = 19.816241
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station8);
                stations8.Add(station8);

                Station station9 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.258862,
                        Y = 19.822775
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station9);
                stations8.Add(station9);

                Station station10 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.260678,
                        Y = 19.833057
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station10);
                stations8.Add(station10);

                Station station11 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.262600,
                        Y = 19.839689
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station11);
                stations8.Add(station11);

                Station station12 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Jovana Subotica"
                    },
                    Location = new Location()
                    {
                        X = 45.260318,
                        Y = 19.842785
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station12);
                stations8.Add(station12);

                Station station13 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.256089,
                        Y = 19.841208
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station13);
                stations8.Add(station13);

                Station station14 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.253385,
                        Y = 19.843214
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station14);
                stations8.Add(station14);

                Station station15 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.253521,
                        Y = 19.847516
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station15);
                stations8.Add(station15);

                Station station16 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.251270,
                        Y = 19.846840
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station16);
                stations8.Add(station16);

                Station station17 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.247750,
                        Y = 19.849104
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station17);
                stations8.Add(station17);

                Station station18 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.245620,
                        Y = 19.846819
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station18);
                stations8.Add(station18);

                Station station19 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21000",
                        Street = "Bulevar Kneza Milosa"
                    },
                    Location = new Location()
                    {
                        X = 45.238989,
                        Y = 19.847967
                    },
                    Name = "Okretnica 8-ce"
                };

                _context.Add(station19);
                stations8.Add(station19);

                //stations 4

                Station station20 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Bulevar Jase Tomica"
                    },
                    Location = new Location()
                    {
                        X = 45.26446733929329,
                        Y = 19.829593939230563
                    },
                    Name = "Zeleznicka stanica"
                };

                _context.Add(station20);
                stations4.Add(station20);

                Station station21 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Bulevar oslobodjenja 30"
                    },
                    Location = new Location()
                    {
                        X = 45.26001187717833,
                        Y = 19.832297605917574
                    },
                    Name = "Lutrija"
                };

                _context.Add(station21);
                stations4.Add(station21);

                Station station22 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Bulevar oslobodjenja 66a"
                    },
                    Location = new Location()
                    {
                        X = 45.25462227539901,
                        Y = 19.83525958562143
                    },
                    Name = "Aleksandar zgrada"
                };

                _context.Add(station22);
                stations4.Add(station22);

                Station station23 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Jevrejska 31"
                    },
                    Location = new Location()
                    {
                        X = 45.25158042895487,
                        Y = 19.83682571728548
                    },
                    Name = "Futoska pijaca"
                };

                _context.Add(station23);
                stations4.Add(station23);

                Station station24 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Centar"
                    },
                    Location = new Location()
                    {
                        X = 45.25390672021402,
                        Y = 19.842361796692217
                    },
                    Name = "Lili"
                };

                _context.Add(station24);
                stations4.Add(station24);

                Station station25 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Centar"
                    },
                    Location = new Location()
                    {
                        X = 45.25318165264042,
                        Y = 19.84401403744539
                    },
                    Name = "Bazar"
                };

                _context.Add(station25);
                stations4.Add(station25);

                Station station26 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Bulevar Jase Tomica"
                    },
                    Location = new Location()
                    {
                        X = 45.2534938719465,
                        Y = 19.84743306299697
                    },
                    Name = "Zeleznicka stanica"
                };

                _context.Add(station26);
                stations4.Add(station26);

                Station station27 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Bulevar Jase Tomica"
                    },
                    Location = new Location()
                    {
                        X = 45.25122798857049,
                        Y = 19.846853705849753
                    },
                    Name = "Zeleznicka stanica"
                };

                _context.Add(station27);
                stations4.Add(station27);

                Station station28 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Strazilovska"
                    },
                    Location = new Location()
                    {
                        X = 45.247753458479686,
                        Y = 19.84917113443862
                    },
                    Name = "Strazilovska"
                };

                _context.Add(station28);
                stations4.Add(station28);

                Station station29 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Izvor, Bulevar Cara Lazara"
                    },
                    Location = new Location()
                    {
                        X = 45.24551257269078,
                        Y = 19.846830790917465
                    },
                    Name = "Izvor"
                };

                _context.Add(station29);
                stations4.Add(station29);

                Station station30 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Narodnog fronta 1"
                    },
                    Location = new Location()
                    {
                        X = 45.24253627573835,
                        Y = 19.84749597875316
                    },
                    Name = "Zeleznicka stanica"
                };

                _context.Add(station30);
                stations4.Add(station30);

                Station station31 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Narodnog fronta"
                    },
                    Location = new Location()
                    {
                        X = 45.24037140396024,
                        Y = 19.837623919236535
                    },
                    Name = "Narodnog fronta"
                };

                _context.Add(station31);
                stations4.Add(station31);

                Station station32 = new Station()
                {
                    Address = new Address()
                    {
                        City = "Novi Sad",
                        Number = "21101",
                        Street = "Narodnog fronta"
                    },
                    Location = new Location()
                    {
                        X = 45.237289068480194,
                        Y = 19.826809252488488
                    },
                    Name = "Narodnog fronta"
                };

                _context.Add(station32);
                stations4.Add(station32);
            }

            if (!_context.StationLines.Any())
            {
                foreach (Station s in stations8)
                {
                    StationLine stline = new StationLine()
                    {
                        Station = s
                    };
                    _context.Add(stline);
                    stlines8.Add(stline);
                }

                foreach (Station s in stations4)
                {
                    StationLine stline = new StationLine()
                    {
                        Station = s
                    };
                    _context.Add(stline);
                    stlines4.Add(stline);
                }

            }


            if (!_context.Lines.Any())
            {
                Line line8 = new Line()
                {
                    Name = "NOVO NASELJE - CENTAR - LIMAN 4",
                    LineNumber = 8,
                    Buses = new List<Bus>()
                    {
                        new Bus()
                        {
                            BusNumber = 244,
                            InUse = true,
                        },
                        new Bus()
                        {
                            BusNumber = 222,
                            InUse = true,
                        },
                        new Bus()
                        {
                            BusNumber = 234,
                            InUse = true,
                        }
                    },
                    Stations = stlines8
                };
                _context.Add(line8);
                lines8 = line8;

                Line line4 = new Line()
                {
                    Name = "ZELEZNICKA STANICA - CENTAR - LIMAN 4",
                    LineNumber = 4,
                    Buses = new List<Bus>()
                    {
                        new Bus()
                        {
                            BusNumber = 135,
                            InUse = true,
                        },
                        new Bus()
                        {
                            BusNumber = 789,
                            InUse = true,
                        },
                        new Bus()
                        {
                            BusNumber = 354,
                            InUse = true,
                        }
                    },
                    Stations = stlines4
                };
                _context.Add(line4);
                lines4 = line4;
            }

            if (!_context.TimeTables.Any())
            {
                TimeTable timeTable1 = new TimeTable()
                {
                    Day = "Working day",
                    Departures = "00:12-22-25-34-40-45-58/01:30/02:30/03:30/04:30/05:30/06:00-20-40/07:03-12-23-30-45-58/08:13-22-25-30-45-58/09:03-12-23-30-45-58/10:03-12-23-30-45-58/11:03-12-23-30-45-58/12:03-12-23-30-45-58/13:03-12-23-30-45-58/14:03-12-23-30-45-58/15:03-12-23-30-45-58/16:03-12-23-30-45-58/17:00-23-30-40-58/18:00-23-30-40-58/19:00-23-30-40-58/20:00-23-40-58/21:00-23-40-58/22:00-23-40-58/23:00-30-58",
                    Type = "In City",
                    Line = lines8
                };
                _context.Add(timeTable1);

                TimeTable timeTable2 = new TimeTable()
                {
                    Day = "Working day",
                    Departures = "00:12-25-34-40-45-58/01:30/02:30/03:30/04:30/05:30/06:00-25-40/07:03-14-23-37-45-52/08:13-22-25-30-45-58/09:03-12-30-45-58/10:03-12-27-30-41-58/11:03-12-23-30-45-58/12:03-12-23-30-45-58/13:03-12-23-30-45-58/14:03-12-23-30-45-58/15:03-12-23-30-45-58/16:03-12-23-30-45-58/17:00-23-30-40-58/18:00-23-30-40-58/19:00-23-30-40-58/20:00-23-40-58/21:00-23-40-58/22:00-23-40-58/23:00-30-58",
                    Type = "In City",
                    Line = lines4
                };
                _context.Add(timeTable2);

            }

            if (!_context.PricelistItems.Any())
            {
                UserDiscount ud1 = new UserDiscount()
                {
                    Type = "Student",
                    Value = 20
                };
                _context.Add(ud1);

                UserDiscount ud2 = new UserDiscount()
                {
                    Type = "Regular",
                    Value = 0
                };
                _context.Add(ud2);

                UserDiscount ud3 = new UserDiscount()
                {
                    Type = "Senior",
                    Value = 35
                };
                _context.Add(ud3);


                Item it1 = new Item()
                {
                    Type = "Hourly",
                    Description = "This ticket is valid just for one hour"
                };
                _context.Add(it1);

                Item it2 = new Item()
                {
                    Type = "Daily",
                    Description = "This ticket is valid until 00:00 next day"
                };
                _context.Add(it2);


                Item it3 = new Item()
                {
                    Type = "Monthly",
                    Description = "This ticket is valid for one month"
                };
                _context.Add(it3);

                Item it4 = new Item()
                {
                    Type = "Annual",
                    Description = "This ticket is valid for one year"
                };
                _context.Add(it4);
                _context.SaveChanges();

                Pricelist pr = new Pricelist()
                {
                    Active = true,
                    From = DateTime.Now,
                    To = DateTime.Now.AddMonths(4)
                };
                _context.Add(pr);
                _context.SaveChanges();

                PricelistItem prit1 = new PricelistItem()
                {
                    Pricelist = pr,
                    Price = 150,
                    Item = it1
                };
                _context.Add(prit1);

                PricelistItem prit2 = new PricelistItem()
                {
                    Pricelist = pr,
                    Price = 390,
                    Item = it2
                };
                _context.Add(prit2);

                PricelistItem prit3 = new PricelistItem()
                {
                    Pricelist = pr,
                    Price = 3450,
                    Item = it3
                };
                _context.Add(prit3);

                PricelistItem prit4 = new PricelistItem()
                {
                    Pricelist = pr,
                    Price = 12050,
                    Item = it4
                };
                _context.Add(prit4);
            }
            
            _context.SaveChanges();

        }
    }
}