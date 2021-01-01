<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <link href="StyleSheet.css" rel="stylesheet" />
    <form runat="server">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="ENTER YOUR EMAIL"></asp:TextBox><br />
    <asp:TextBox ID="TextBox2" runat="server" placeholder="ENTER YOUR NAME"></asp:TextBox><br />
    <asp:Label ID="Label1" runat="server" Text="give your feedback"></asp:Label><br />
        <table>
            <tr>
         <td><asp:LinkButton ID="LinkButton1" runat="server"><i class='fas fa-grin-hearts' style='font-size:36px;color:yellow ;position:center'></i><br />best</asp:LinkButton></td>
         <td><asp:LinkButton ID="LinkButton2" runat="server"><i class='fas fa-grin-alt' style='font-size:36px;color:yellow;position:center'></i><br />good</asp:LinkButton></td>
         <td><asp:LinkButton ID="LinkButton3" runat="server"><i class='fas fa-smile' style='font-size:36px;color:yellow;position:center'> </i><br />okok</asp:LinkButton></td>                                                   
         <td><asp:LinkButton ID="LinkButton4" runat="server"><i class='fas fa-frown' style='font-size:36px;color:yellow;position:center'></i><br />bad</asp:LinkButton></td>
        <td><asp:LinkButton ID="LinkButton5" runat="server"><i class='fas fa-angry' style='font-size:36px;color:red;position:center'></i><br />very bad</asp:LinkButton></td>
            </tr>
        </table>
        <br />
    <input id="Text1" type="text" placeholder="comment" style="resize:both"/><br />
   <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" /><br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label><i class='fas fa-heart' style='color:red'></i>
        </form>
</asp:Content>

