using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Nhac_ASP.Models;

namespace Nhac_ASP
{
    public partial class NgheNhac : System.Web.UI.Page
    {
        List<Nhac> lst;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dsnhac"] != null)
                lst = (List<Nhac>)Session["dsnhac"];
            else
                lst = new List<Nhac>();

            if (Request.QueryString["id"] != null)
            {
                string ma = Request.QueryString["id"].ToString();
                Nhac x = lst.Where(t => t.MaBH == ma).FirstOrDefault();

                if (x != null)
                {
                    nhac.InnerHtml = "<h2>" + x.TuaBH + "</h2>"
                        + "<p><embed src='" + x.FileNhac + "'><br/><br/>"
                        + "<img src='" + x.AnhBia + "' class='x-bia'><br/><br/>"
                        + "Ma bai hat: " + x.MaBH + "<br/>"
                        + "Tua bai hat: " + x.TuaBH + "<br/>"
                        + "Ca sy: " + x.CaSy + "<br/>"
                        + "Gioi tinh ca sy: " + x.GioiTinh + "<br/>"
                        + "Email ca sy: " + x.Email + "<br/>"
                        + "The loai: " + x.TheLoai + "<br/>"
                        + "</p>";
                }
            }
        }
    }
}