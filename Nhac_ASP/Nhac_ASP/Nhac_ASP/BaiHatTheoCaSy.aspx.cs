using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Nhac_ASP.Models;

namespace Nhac_ASP
{
    public partial class BaiHatTheoCaSy : System.Web.UI.Page
    {
        List<Nhac> lst;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dsnhac"] != null)
                lst = (List<Nhac>)Session["dsnhac"];
            else
                lst = new List<Nhac>();

            if (Request.QueryString["singer"] != null)
            {
                string casy = Request.QueryString["singer"].ToString();
                string s = casy.Replace("\b", "%20");

                string str = "";
                foreach (var i in lst)
                {
                    if (i.CaSy == s)
                        str += "<div class='x-box'>"
                            + "<img src='" + i.AnhBia + "' class='x-img'>"
                            + "<p><a href='NgheNhac.aspx?id=" + i.MaBH + "'>" + i.TuaBH + "</a><br>"
                            + "<a href='BaiHatTheoCaSy.aspx?singer=" + i.CaSy + "'>" + i.CaSy + "</a><br>"
                            + "</p></div><div style='clear: both;'/>";
                }
                cbhasy.InnerHtml = str;
            }
        }
    }
}