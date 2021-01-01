<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="display_logo.aspx.cs" Inherits="user_display_logo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Repeater ID="d2" runat="server">
        <ItemTemplate>     
                   <div style="width: 249px; height: 251px">
                       <br />
                       <br />
                      <a href="logo_description.aspx?id=<%#Eval("Id") %>"><img src="../<%#Eval("product_images") %>" alt="sorry" style="width: 99px; height: 100px; margin-left: 74px;" />
                   </a>
                       <br />
                       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                       <br />
                    
                   <br />
                   </div>
                      
        </ItemTemplate>      
    </asp:Repeater>
</asp:Content>



