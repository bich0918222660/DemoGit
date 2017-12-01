using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Nhac_ASP.Models;

namespace Nhac_ASP
{
    public partial class TrangChu1 : System.Web.UI.Page
    {
        List<Nhac> lst = new List<Nhac>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                if (Session["dsnhac"] == null)
                {
                    lst = create();
                    Session["dsnhac"] = lst;
                }
                else
                    lst = (List<Nhac>)Session["dsnhac"];


                string s = "";
                foreach(var i in lst)
                {
                    s += "<div class='x-box'>"
                        + "<img src='" + i.AnhBia + "' class='x-img'>"
                        + "<p><a href='NgheNhac.aspx?id=" + i.MaBH + "'>" + i.TuaBH + "</a><br>"
                        + "<a href='BaiHatTheoCaSy.aspx?singer=" + i.CaSy + "'>" + i.CaSy + "</a><br>"
                        + "</p></div><div style='clear: both;'/>";
                }
                dsnhac.InnerHtml = s;
            }
        }

        private List<Nhac> create()
        {
            List<Nhac> ds = new List<Nhac>();
            ds.Add(new Nhac("N-000-0001"
                , "I love Banana", "Dong Nhi"
                , "Nu", "dnhi@gmail.com"
                , "Hien dai", "2017"
                , "Imgs/1.jpg", "Audios/until.mp3"));
            ds.Add(new Nhac("N-000-0002"
                , "Because i'm stupid", "Ai do"
                , "Nam", "aibiet@gmail.com"
                , "Pop", "2005"
                , "Imgs/1.gif", "Audios/until.mp3"));
            ds.Add(new Nhac("N-000-0003"
                , "Yeu", "Ai do"
                , "Nam", "aibiet@gmail.com"
                , "Hien dai", "1998"
                , "Imgs/2.jpg", "Audios/until.mp3"));
            ds.Add(new Nhac("N-000-0004"
                , "Bad boy", "Dong Nhi"
                , "Nu", "dnhi@gmail.com"
                , "Hien dai", "2017"
                , "Imgs/3.jpg", "Audios/until.mp3"));
            ds.Add(new Nhac("N-000-0005"
                , "Nobody", "Dong Nhi"
                , "Nu", "dnhi@gmail.com"
                , "Hien dai", "2001"
                , "Imgs/1.jpg", "Audios/until.mp3"));
            return ds;
        }
    }
}