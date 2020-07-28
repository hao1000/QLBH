using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace M3QLBH.Controllers
{
    public class Admin1Controller : Controller
    {
        // GET: Admin
        public ActionResult Index()
        {
            // active client
            @ViewBag.TrangChuAct = "active";
            return View();
        }
    }
}