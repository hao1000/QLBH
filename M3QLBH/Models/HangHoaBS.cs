using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace M3QLBH.Models
{
    public partial  class HangHoa
    {
        public List<string> Hinhs
        {
            get {
                var _Hinhs = new List<string>();
                if (!string.IsNullOrEmpty(TenHinh))
                    _Hinhs.AddRange(TenHinh.Split(','));
                else
                    _Hinhs.Add("noImage.jpg");
                return _Hinhs;
            }
          
        }

    }
}