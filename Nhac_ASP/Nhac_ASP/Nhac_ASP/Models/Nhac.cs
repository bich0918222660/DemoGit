using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhac_ASP.Models
{
    public class Nhac
    {
        public string MaBH { get; set; }
        public string TuaBH { get; set; }
        public string CaSy { get; set; }
        public string GioiTinh { get; set; }
        public string Email { get; set; }
        public string TheLoai { get; set; }
        public string NamPhatHanh { get; set; }
        public string AnhBia { get; set; }
        public string FileNhac { get; set; }

        public Nhac() { }

        public Nhac(string MaBH, string TuaBH
            , string CaSy, string GioiTinh
            , string Email, string TheLoai
            , string NamPhatHanh, string AnhBia
            , string FileNhac)
        {
            this.MaBH = MaBH;
            this.TuaBH = TuaBH;
            this.CaSy = CaSy;
            this.GioiTinh = GioiTinh;
            this.Email = Email;
            this.TheLoai = TheLoai;
            this.NamPhatHanh = NamPhatHanh;
            this.AnhBia = AnhBia;
            this.FileNhac = FileNhac;
        }

    }
}