<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MembersOnly.aspx.cs" Inherits="Vortex_Equipment.MembersOnly" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1><i>Welcome!</i></h1>
     <h4><i>You have successfully logged in.</i></h4>
    
        
        <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" OnClick="Button1_Click" Text="View Special Offers" />    
        <asp:Button ID="Button2" class="btn btn-primary btn-lg" runat="server" Text="Feedback/Recommendation" OnClick="Button2_Click" />
        <asp:Button ID="Button3" class="btn btn-primary btn-lg" runat="server" Text="View/Update Profile" OnClick="Button3_Click" />
        
    

</asp:Content>
