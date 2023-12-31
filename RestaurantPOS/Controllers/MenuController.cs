﻿using Microsoft.AspNetCore.Mvc;
using RestaurantPOS.Services;
using RestaurantPOS.Models;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Linq;
namespace RestaurantPOS.Controllers
{
    public class MenuController : Controller
    {
        private readonly  IFoodService _foodService;
        public MenuController(IFoodService foodService)
        {
            _foodService = foodService;
        }
        // GET: MenuController
        public async Task<IActionResult> MenuFood(string[] listCategory)
        {
            var foods = await _foodService.GetAllFoodAsync(listCategory);
            return View(foods);
        }

        // GET: MenuController/Details/5
        public async Task<IActionResult> Details(int id)
        {
            var food = await _foodService.GetFoodByIdAsync(id);
            return View(food);
        }
        [HttpPost]
        public async Task<IActionResult> InsertFoodToCart(FoodViewModel food)
        {
            if (!User.Identity.IsAuthenticated)
                return RedirectToAction("Login", "Home");
            await _foodService.InsertFoodAsync(User, food);
            return RedirectToAction("MenuFood");
        }
    }
}
