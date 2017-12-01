using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Nhac_ASP.Models;
using System.IO;

namespace Nhac_ASP
{
    public partial class Them : System.Web.UI.Page
    {
        List<Nhac> lst;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dsnhac"] != null)
                lst = (List<Nhac>)Session["dsnhac"];
            else
                lst = new List<Nhac>();
        }

        protected void BtnThem_Click(object sender, EventArgs e)
        {
            if (FileAnh.PostedFile != null && FileNhac.PostedFile != null)
            {
                try
                {
                    string fileImg = Path.GetFileName(FileAnh.PostedFile.FileName);
                    string fileAudio = Path.GetFileName(FileNhac.PostedFile.FileName);

                    FileAnh.SaveAs(Server.MapPath("Imgs/" + fileImg));
                    FileNhac.SaveAs(Server.MapPath("Audios/" + fileAudio));

                    Nhac x = new Nhac(txtMa.Text.Trim()
                        , txtTuaBH.Text.Trim()
                        , txtCasy.Text.Trim()
                        , txtGioiTinh.Text.Trim()
                        , txtEmail.Text.Trim()
                        , txtTheLoai.Text.Trim()
                        , txtNam.Text.Trim()
                        , "Imgs/" + fileImg
                        , "Audios/" + fileAudio);
                    lst.Add(x);
                    thongbao.InnerHtml = "Them thanh cong!";
                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
                thongbao.InnerHtml = "Them that bai!";
        }
    }
}