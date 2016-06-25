<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Vortex_Equipment.Account.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
            
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Feedback/Recommendation "></asp:Label>
                <br />
                <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea><br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            
            </div>
        </div>
    </div>
    </form>
    </body>
</html>
