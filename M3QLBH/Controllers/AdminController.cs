using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using M3QLBH.Models;
namespace M3QLBH.Controllers
{
    public class AdminController : Controller
    {
        QLBanHangDbContext db = new QLBanHangDbContext();
        // GET: Admin
        public ActionResult Index()
        {
            int tsCL = db.ChungLoais.Count();
            int tsL = db.Loais.Count();
            int tsHH = db.HangHoas.Count();

            ViewBag.TongSoChungLoai = tsCL;
            ViewBag.TongSoLoai = tsCL;
            ViewBag.TongSoHangHoa = tsCL;

            return View();
        }
    }
}