<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign_up.aspx.cs" Inherits="admin_sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:Label ID="email1" runat="server" Text="email"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
         <div>
    
        <asp:Label ID="username1" runat="server" Text="username"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
    </div>
       <div>
            <asp:Label ID="password1" runat="server" Text="password"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="sign up" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
