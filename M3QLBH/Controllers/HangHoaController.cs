using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using M3QLBH.Models;
namespace M3QLBH.Controllers
{
    public class HangHoaController : Controller
    {
        QLBanHangDbContext db = new QLBanHangDbContext();
        
        [ChildActionOnly]  // Ngan ko cho phep truy cap truc tiep
        // GET: HangHoa
        public ActionResult _GallaryPartial(int loaiID)
        {
            List<HangHoa> items = db.HangHoas
                                 .Where(p => p.LoaiID == loaiID)
                                 .OrderByDescending(p => p.ID)
                                 .Take(6)
                                 .ToList();
            ViewBag.HangHoas = items;
            return PartialView();
        }

        [ChildActionOnly]  // Ngan ko cho phep truy cap truc tiep
        // GET: HangHoa
        public ActionResult _HangHoaMoiPartial()
        {
            List<HangHoa> items = db.HangHoas
                                 .OrderByDescending(p => p.ID)
                                 .Take(6)
                                 .ToList();
            ViewBag.HangHoas = items;
            return PartialView();
        }
    }
}