using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Nhac_ASP.Models;

namespace Nhac_ASP
{
    public partial class DanhSach : System.Web.UI.Page
    {
        List<Nhac> lst;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                if (Session["dsnhac"] != null)
                    lst = (List<Nhac>)Session["dsnhac"];
                else
                    lst = new List<Nhac>();

                if(Request.QueryString["id"] != null)
                {
                    string ma = Request.QueryString["id"].ToString();
                    Nhac x = lst.Where(t => t.MaBH == ma).FirstOrDefault();

                    if (x != null)
                        lst.Remove(x);
                    Session["dsnhac"] = lst;
                }
                

                string s = "<table border=1"
                    + " style='border-collapse: collapse;' width=800>"
                    + "<tr><th>Ma bai hat</th><th>Tua bai hat</th>"
                    + "<th>Ca sy</th><th>The loai</th>"
                    + "<th></th><th></th></tr>";
                foreach(var i in lst)
                {
                    s += "<tr><td>" + i.MaBH + "</td>"
                        + "<td>" + i.TuaBH + "</td>"
                        + "<td>" + i.CaSy + "</td>"
                        + "<td>" + i.TheLoai + "</td>"
                        + "<td><a href='NgheNhac.aspx'>Nghe nhac</a></td>"
                        + "<td><a href='DanhSach.aspx?id=" + i.MaBH + "'>Xoa</a></td>"
                        + "</tr>";
                }
                ds.InnerHtml = s + "</table>";
            }
        }
    }
}