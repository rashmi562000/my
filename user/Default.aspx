<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="user_Default" %>

<!DOCTYPE html5>

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
    <title></title> 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://files.codepedia.info/files/uploads/iScripts/html2canvas.js"></script>
    <style type="text/css">
        #html-content-holder{
            width: 250px;
            height: 250px;
            margin-left: 49px;
            background-color:#d59c9c;
            transition:background 100ms;
            z-index:1;
        }
        input{
            display:block;
            }
        .auto-style2 {
            width: 240px;
        }
        .auto-style3 {
            width: 236px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <input type="hidden" value="${newsmartcard}" id="smartcard" />
    <table>
        <tr>
            <td class="auto-style3" ><div style="position:relative ; flex-basis:10%; float:right"></div>
                
                <div style="flex-basis:30%; float:right;position:relative; top: 0px; left: 0px; width: 232px;">
               <h3>Background Color</h3>
                        <div class="picker" >
                            <input type="range" min="0" max="255" step="1" id="red" value="20" />
                          <input type="range" min="0" max="255" step="1" id="green" value="20" />
                            <input type="range" min="0" max="255" step="1" id="blue" value="20" />
                        </div>
                    <h3>Font Color</h3>
                     <div class="picker">
                            <input type="range" min="0" max="255" step="1" id="red1" value="20" />
                          <input type="range" min="0" max="255" step="1" id="green1" value="20" />
                            <input type="range" min="0" max="255" step="1" id="blue1" value="20" />
                        </div>
                   <div class="column">
                       <h3>Font Family</h3>
                <select id="option-font" name="D1" onchange="change_font()">
                    <option >Select Font</option>  <option value="bold">bold</option>
                     <option value="Times New Roman">Times New Roman</option>  <option value="Buxton Sketch">Buxton Sketch</option>
                     <option value="Aharoni">Aharoni</option>  <option value="Chiller">Chiller</option>
                     <option value="Agency FB">Agency FB</option>  <option value="David">David</option>
                     <option value="Blackadder ITC">Blackadder ITC</option>  <option value="Magneto">Magneto</option>
                     <option value="Bradley Hand ITC">Bradley Hand ITC</option>  <option value="Cooper Black">Cooper Black</option>
                     <option value="Wide Latin">Wide Latin</option> <option value="Franklin Gothic Heavy">Franklin Gothic Heavy</option>
                     <option value="Curlz MT">Curlz MT</option> <option value="Harlow Solid Italic">Harlow Solid Italic</option>
                     <option value="Gigi">Gigi</option> <option value="Matura MT Script Capitals">Matura MT Script Capitals</option>
                     <option value="Forte">Forte</option> <option value="Harrington">Harrington</option>
                     <option value="Engravers MT">Engravers MT</option> <option value="MV Boli">MV Boli</option>
                     <option value="Castellar">Castellar</option> <option value="Snap ITC">Snap ITC</option>
                    <option value="Kokila">Kokila</option> <option value="Symbol">Symbol</option>
                </select></div>
                    <div class="column">
                        <h3>Font Size</h3>
                        <select id="option-size" onchange="change_size()">
                            <option value="5">5</option>
                            <option value="10">10</option>
                            <option value="15">15</option>
                            <option value="20">20</option>
                            <option value="25">25</option>
                            <option value="30">30</option>
                            <option value="35">35</option>
                            <option value="40">40</option>
                            <option value="45">45</option>
                            <option value="50">50</option>
                        </select>
                    </div>
             </div>
                </td>
             <td>
                 
                 <div id="html-content-holder" >
                    
                     <asp:Repeater ID="d1" runat="server" >
           <ItemTemplate >
             <div style="height:100px; width:100px">     
                <img src='../<%#Eval("product_images") %>'  alt="sorry" style="height:100px; width:100px; margin-left: 70px; margin-top: 40px;"/></div><br />
               <br />
               <br />
                    <div id="lab">
                       <center> <asp:Label ID="Label3" runat="server" Text="edit logo name" contenteditable="true"></asp:Label><br />
       <asp:Label ID="Label4" runat="server" Text="edit slogan name" contenteditable="true"></asp:Label></center</div>
                        <script type="text/javascript">
                            var input = document.querySelectorAll("input");

                            for (var i = 0; i < input.length; i++) {
                                input[i].addEventListener("input", function () {
                                    var red = document.getElementById("red1").value,
                                        green = document.getElementById("green1").value,
                                        blue = document.getElementById("blue1").value;

                                    var display1 = document.getElementById("lab");
                                    display1.style.color = "rgb(" + red + "," + green + "," + blue + ")";
                                });
                            }
     </script>   
      
 
                  <script type="text/javascript">
                      var input = document.querySelectorAll("input");

                      for (var i = 0; i < input.length; i++) {
                          input[i].addEventListener("input", function () {
                              var red = document.getElementById("red").value,
                                  green = document.getElementById("green").value,
                                  blue = document.getElementById("blue").value;

                              var display = document.getElementById("html-content-holder");
                              display.style.background = "rgb(" + red + "," + green + "," + blue + ")";

                          });
                      }
</script>   
               <script>
                   
                   function change_size() {
                   let optionSize = document.getElementById('option-size'),
                       text = document.getElementById('lab');
                   text.style.fontSize = optionSize.value + 'px';
               }
                   
                   function change_font() {
                       let optionFont = document.getElementById('option-font'),
                           text = document.getElementById('lab');
                       text.style.fontFamily = optionFont.value;
                   }
               </script>
               </div>
           </ItemTemplate>
                         
               </asp:Repeater>
                  
                 </div>
                
                
            </td>
            <td class="auto-style2">
                <asp:Panel ID="Panel1" runat="server" Height="215px">
                    <asp:Image ID="Image1" runat="server" Height="108px" ImageUrl='&#039;../<%#Eval("product_images") %>&#039;' Width="127px" />
                </asp:Panel>  </td>
        </tr>
    </table>
         <input id="btn-Preview-Image" type="button" value="Preview" />
        <a id="btn-Convert-Html2Image" href="#">Download</a>
                <script>
                    $(document).ready(function () {
                        var element = $("#html-content-holder");
                        var getCanvas;

                        $("#btn-Preview-Image").on('click', function () {
                            html2canvas(element, {
                                onrendered: function (canvas) {
                                    $("#previewImage").append(canvas);
                                    getCanvas = canvas;
                                }
                            });
                        });

                        $("#btn-Convert-Html2Image").on('click', function () {
                            var imageData = getCanvas.toDataURL("image/png");
                            var smartcard = document.getElementById("smartcard").value;
                            var newData = imageData.replace(/^data:image\/png/, "data:application/octet-stream");
                            $("#btn-Convert-Html2Image").attr("download", smartcard + "1.png").attr("href", newData);

                        });
                    });
    </script>
                 
    </form>
</body>
     
</html>
