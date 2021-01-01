<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>logo name</td>
            <td> <asp:TextBox ID="p1" runat="server"></asp:TextBox> </td>
        </tr>

        <tr>
            <td>logo description</td>
            <td> <asp:TextBox ID="p2" runat="server"></asp:TextBox> </td>
        </tr>

        <tr>
            <td>logo price</td>
            <td> <asp:TextBox ID="p3" runat="server"></asp:TextBox> </td>
        </tr>

        <tr>
            <td>logo images</td>
            <td> 
                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                <asp:FileUpload ID="img1" runat="server" />
            </td>
        </tr>
        <tr> 
            <td>catogary1: </td><td><asp:RadioButtonList ID="RadioButtonList1" runat="server">
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
                </asp:RadioButtonList></td>
            </tr>
        <tr>
            <td>catogary2:</td>
            <td><asp:CheckBoxList ID="CheckBoxList1" runat="server">
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
                </asp:CheckBoxList></td>
        </tr>
        <tr>
            <td colspan="2" aline="center">
                <asp:Button ID="B1" runat="server" Text="upload" OnClick="B1_Click" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] set [product_name]=@product_name , [product_description]=@product_description , [product_price]=@product_price , [product_images]=@product_images [catogary1]=@catogary1 , [catogary2]=@catogary2 Where [id]=@id" DeleteCommand="DELETE from[product]"></asp:SqlDataSource>
</asp:Content>

