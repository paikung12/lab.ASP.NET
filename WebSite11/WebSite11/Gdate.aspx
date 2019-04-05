<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gdate.aspx.cs" Inherits="Gdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Update.aspx">กลับไปหน้าอัพโหลดไฟล์</asp:HyperLink>
    </form>
</body>
</html>
