using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using M3QLBH.Models;

namespace M3QLBH.Controllers
{
    public class DemoController : Controller
    {
        QLBanHangDbContext db = new QLBanHangDbContext();
        // GET: Demo
        public ActionResult Index()
        {
            var items = db.ChungLoais.ToList();
            ViewBag.ChungLoais = items;
            @ViewBag.TestModelAct = "active";
            return View();
        }
    }
}