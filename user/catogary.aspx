<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="catogary.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
        
        <asp:MultiView ID="MultiView1" runat="server" >
           
        <asp:View ID="View1" runat="server" >
   <h1>What’s your logo for?</h1>
<h4>Add your business or industry to get the best options for you.</h4>
            <table>
                <tr>
     <asp:RadioButtonList ID="radio" runat="server">
         <asp:ListItem Text="fashion" Value="fashion"></asp:ListItem>
         <asp:ListItem Text="health and beauty" Value="health and beauty"></asp:ListItem>
         <asp:ListItem Text="home and garden" Value="home and garden"></asp:ListItem>
         <asp:ListItem Text="food drink" Value="food drink"></asp:ListItem>
         <asp:ListItem Text="sport" Value="sport"></asp:ListItem>
         <asp:ListItem Text="gift and collectibles" Value="gift and collectibles"></asp:ListItem>
         <asp:ListItem Text="tech" Value="tech"></asp:ListItem>
         <asp:ListItem Text="art and photos" Value="art and photos"></asp:ListItem>
         <asp:ListItem Text="services" Value="services"></asp:ListItem>
         <asp:ListItem Text="games" Value="games"></asp:ListItem>
         <asp:ListItem Text="children" Value="children"></asp:ListItem>
         <asp:ListItem Text="pets" Value="pets"></asp:ListItem>    
         <asp:ListItem Text="jwellary" Value="jwellary"></asp:ListItem>
         <asp:ListItem Text="others" Value="others"></asp:ListItem>
                </asp:RadioButtonList>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button5" runat="server" Text="NEXT" OnClick="Button5_Click" />
                    </td>
                </tr>
            </table>
            </asp:View>
 <asp:View ID="View2" runat="server">
       <h1> How should your logo look & feel?</h1>
<h4>We'll tailor the font, icons and colors to match your style.</h4>
                <asp:CheckBoxList ID="check" runat="server">
                    <asp:ListItem Text="bold" Value="bold"></asp:ListItem>
                    <asp:ListItem Text="classic" Value="classic"></asp:ListItem>
                    <asp:ListItem Text="creative" Value="creative"></asp:ListItem>
                    <asp:ListItem Text="calm" Value="calm"></asp:ListItem>
                    <asp:ListItem Text="energetic" Value="energetic"></asp:ListItem>
                    <asp:ListItem Text="friendly" Value="friendly"></asp:ListItem>
                    <asp:ListItem Text="industrial" Value="industrial"></asp:ListItem>
                    <asp:ListItem Text="natural" Value="natural"></asp:ListItem>
                    <asp:ListItem Text="youthful" Value="youthful"></asp:ListItem>
                    <asp:ListItem Text="none of the above" Value="none of the above"></asp:ListItem> 
                </asp:CheckBoxList>


     <asp:Button ID="Button6" runat="server" Text="PREVIOUS" style="text-align:left" OnClick="Button6_Click"/>
     <asp:Button ID="Button7" runat="server" Text="NEXT" style="text-align:right" OnClick="Button7_Click" />
        </asp:View>
            <asp:View ID="View3" runat="server">
                <h4>Add the name of your business or organization.</h4>
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Buisness name"></asp:Label></td>
                    <td><asp:TextBox ID="logoname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td> <asp:Label ID="Label2" runat="server" Text="Slogan(optional)"></asp:Label></td>
                   <td> <asp:TextBox ID="slogan" runat="server"></asp:TextBox></td>
                </tr>
               
             <tr>
                <asp:Button ID="Button8" runat="server" Text="PREVIOUS" style="text-align:center" OnClick="Button8_Click"/>
                <asp:Button ID="Button9" runat="server" Text="NEXT" style="text-align:right; height: 26px;" OnClick="Button9_Click" />
                 </tr>
                 </table>
            </asp:View>
            <asp:View ID="View4" runat="server">
      
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button1_Click" />
              </asp:View>
            <asp:View ID="View5" runat="server">
             <asp:Repeater ID="d2" runat="server">
        <HeaderTemplate>
            <ul>
        </HeaderTemplate>
        <ItemTemplate>     
                  
                     <div> <a href="logo_description.aspx?id=<%#Eval("Id") %>"><img src="../<%#Eval("product_images") %>" alt="sorry" style="z-index:-1" />
                         <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label></div>
                   
               
          
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
    </asp:Repeater>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </asp:View>
            </asp:MultiView>
    </form>
</asp:Content>

