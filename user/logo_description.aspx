<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="logo_description.aspx.cs" Inherits="user_logo_description" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
    <asp:MultiView ID="MultiView1" runat="server">
       
            <asp:View ID="view1" runat="server">
                <div style="width:900px;height:500px;background-color:black;">
                <h1 style="color:white;">rashmi</h1>
                 <asp:Repeater ID="d1" runat="server">
        
         <ItemTemplate>
            <div  style="height:300px; width:700px; border-style:solid;" > 
            <div style="height:300px; width:200px; float:left">
                <a href="default.aspx?id=<%#Eval("Id") %>"><img src='../<%#Eval("product_images") %>' alt="sorry" style="height:300px; width:200px; "/></a>
                
            </div>
        </div>
             </ItemTemplate>
       
   </asp:Repeater>
                 <label>rashmi</label>
                    </div>
            </asp:View>
         <asp:View ID="view2" runat="server">
                 <asp:Repeater ID="d2" runat="server">
        
         <ItemTemplate>
            <div  style="height:300px; width:700px; border-style:solid;" > 
            <div style="height:300px; width:200px; float:left">
                <a href="default.aspx?id=<%#Eval("Id") %>"><img src='../<%#Eval("product_images") %>' alt="sorry" style="height:300px; width:200px; "/></a>
                </div>
    <div style="height:300px; width:400px; float:left">
                   <li>
                    <h1><%#Eval("product_name") %></h1>
                    <h2><%#Eval("product_description") %></h2>
                    <h3><%#Eval("product_price") %></h3>
                </li>
        </div>
                </div>
             <label>meema</label>
             </ItemTemplate>
        
   </asp:Repeater>
            </asp:View>
        
    </asp:MultiView>
    </form>
</asp:Content>

