<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>

    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.blockUI/2.70/jquery.blockUI.js" type="text/javascript"></script>

    <script type="text/javascript">
        var menufooter = null;
        var splitterget = null;
        var splitterfind = null;
        var pnlDownPaneget = null;
        var pnlLeftPaneget = null;
        var homepage = null;
      
        
        

        function fn_BlockUI() {
            $.blockUI({
                message: '<img src="AjaxProgress.gif"/>',
                css: {}, overlayCSS: { backgroundColor: '#FFFFFF', opacity: 0.3 }

            });

        }

       
 
        function unblockUIscript() {
            $.unblockUI();
        }

        
         

    </script>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">

        <ContentTemplate>

           

        <table style="width: 100%; border: 1px solid #5BC0DE; background-color: #EBCCCC">
            <tr>
                <td>sdfsdfsdf</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>dfhfdhdfh</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>

              </ContentTemplate>

        <Triggers>
        </Triggers>

    </asp:UpdatePanel>

    </h2>
    <p>Your contact page.</p>

    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong><a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong><a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
