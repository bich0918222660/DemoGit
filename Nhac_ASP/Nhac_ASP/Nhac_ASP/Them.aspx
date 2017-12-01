<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="Them.aspx.cs" Inherits="Nhac_ASP.Them" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 32px;
        }
        .x-form {
            width: 950px;
            margin: 0 auto;
        }
        .xf-img {
            float: left;
            width: 410px;
        }
        .xf {
            float: right;
            width: 540px;
        }

        .auto-style2 {
            width: 175px;
            text-align: right;
            font-weight: bold;
        }
        .xf-img p::first-line {
            font-weight: bold;
            font-size: 40px;
            text-shadow: 4px 4px 4px white;
            color: lightskyblue;
        }
        .xf-img p {
            font-weight: bold;
            font-size: 30px;
            color: hotpink;
            line-height: 0.9;
        }
        .txt {
            border-radius: 6px;
            padding: 4px;
            color: darkblue;
            border: none;
            border: 1px solid blue;
            box-shadow: 0px 0px 1px white;
        }
        .btn {
            border-radius: 6px;
            padding: 6px;
            color: white;
            border: none;
            box-shadow: 1px 1px 1px white;
            background-color: black;
        }
        h1 {
            text-shadow: 3px 3px 4px hotpink;
            color: darkblue;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            font-weight: bold;
            font-size: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <form id="form1" runat="server" enctype="multipart/form-data">
    
    <div class="x-form">
        <div class="xf-img">
            <img src="Imgs/0.jpg" height="250" width="400" style="margin-top: 100px;" />
            <p>
                Am nhac cuoc song. <br />
                <span style="margin-left: 15px">Tam trang con nguoi.</span>
            </p>
        </div>
        <div class="xf">
            <h1 style="text-align:center">Quan ly bai hat</h1>
            <table style="width: 540px">
                <tr>
                    <td class="auto-style2">Ma bai hat</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtMa" class="txt" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator1" 
                            runat="server" style="color: red"
                            ControlToValidate="txtMa"
                            ErrorMessage="Moi nhap du lieu!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator 
                            ID="RegularExpressionValidator1" 
                            runat="server" style="color: red"
                            ControlToValidate="txtMa"
                            ValidationExpression="[N]-\d{3}-\d{4}"
                            ErrorMessage="Ma bai hat khong dung dinh dang! Vd: N-000-0010">
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Tua bai hat</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtTuaBH" class="txt" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator2" 
                            runat="server" style="color: red"
                            ControlToValidate="txtTuaBH"
                            ErrorMessage="Moi nhap du lieu!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator 
                            ID="RegularExpressionValidator2" 
                            runat="server" style="color: red"
                            ControlToValidate="txtTuaBH"
                            ValidationExpression="[A-Z][a-z]*(\s[A-Z][a-z]*)+"
                            ErrorMessage="Tua bai hat bat dau la chu cai hoa! Vd: Bad boy">
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ca sy</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtCasy" class="txt" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator3" 
                            runat="server" style="color: red"
                            ControlToValidate="txtCasy"
                            ErrorMessage="Moi nhap du lieu!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator 
                            ID="RegularExpressionValidator3" 
                            runat="server" style="color: red"
                            ControlToValidate="txtCasy"
                            ValidationExpression="[A-Z][a-z]*(\s[A-Z][a-z]*)+"
                            ErrorMessage="Ca sy phai bat dau la chu cai hoa! Vd: Bad boy">
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gioi tinh</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:RadioButtonList ID="txtGioiTinh" runat="server">
                            <asp:ListItem Value="Nam" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="Nu" Selected="True"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtEmail" TextMode="Email" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator4" 
                            runat="server" style="color: red"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Moi nhap du lieu!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator 
                            ID="RegularExpressionValidator4" 
                            runat="server" style="color: red"
                            ControlToValidate="txtEmail"
                            ValidationExpression="[A-Za-z0-9_.]{3,}@\w{2,8}.\w{2,4}"
                            ErrorMessage="Email khong hop le! (Vd: abc285@gmail.com)">
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">The loai</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:DropDownList class="txt" ID="txtTheLoai" runat="server" Height="34px" Width="300px">
                            <asp:ListItem Value="Hien dai"></asp:ListItem>
                            <asp:ListItem Value="Pop"></asp:ListItem>
                            <asp:ListItem Value="Rock"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style1"></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2">Nam phat hanh</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtNam" class="txt" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style1"></td>
                    <td>
                        <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator5" 
                            runat="server" style="color: red"
                            ControlToValidate="txtNam"
                            ErrorMessage="Moi nhap du lieu!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator 
                            ID="CompareValidator1" 
                            runat="server" style="color: red"
                            ControlToValidate="txtNam"
                            ValueToCompare="1500"
                            Operator="GreaterThan"
                            ErrorMessage="Nam phat hanh phai tren 1500!">
                        </asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Anh bia</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:FileUpload ID="FileAnh" runat="server" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">File nhac</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:FileUpload ID="FileNhac" runat="server" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnThem" class="btn" runat="server" Text="Them" Width="116px" OnClick="BtnThem_Click" />
                    </td>
                </tr>
            </table>
            <div id="thongbao" runat="server" style="text-align: center"></div>
        </div>
    </div>
    <br style="clear:both"/>
    </form>
    </span>
</asp:Content>
