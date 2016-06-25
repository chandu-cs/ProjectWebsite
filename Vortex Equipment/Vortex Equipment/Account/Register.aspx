<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Vortex_Equipment.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger"/>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TextBox1" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox1" TextMode="singleline" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1"
                    CssClass="text-danger" ErrorMessage="First name field is required." />
            </div>
            <asp:Label runat="server" AssociatedControlID="TextBox2" CssClass="col-md-2 control-label">Surname</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox2" TextMode="singleline" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2"
                    CssClass="text-danger" ErrorMessage="Surname field is required." />
            </div>
            <asp:Label runat="server" AssociatedControlID="TextBox3" CssClass="col-md-2 control-label">Date Of Birth</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox3" TextMode="Date" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox3"
                    CssClass="text-danger" ErrorMessage="Date of birth field is required." />
            </div>
            <asp:Label runat="server" AssociatedControlID="TextBox4" CssClass="col-md-2 control-label">Street Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox4" TextMode="multiline" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox4"
                    CssClass="text-danger" ErrorMessage="Street address field is required." />
            </div>
            <asp:Label runat="server" AssociatedControlID="TextBox5" CssClass="col-md-2 control-label">Suburb</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox5" TextMode="singleline" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox5"
                    CssClass="text-danger" ErrorMessage="Suburb field is required." />
            </div>
            <asp:Label runat="server" AssociatedControlID="TextBox6" CssClass="col-md-2 control-label">City</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox6" TextMode="singleline" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox6"
                    CssClass="text-danger" ErrorMessage="City field is required." />
            </div>
            <asp:Label runat="server" AssociatedControlID="TextBox7" CssClass="col-md-2 control-label">ZipCode</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox7" TextMode="number" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox7"
                    CssClass="text-danger" ErrorMessage="ZipCode field is required." />
            </div>
            <asp:Label runat="server" AssociatedControlID="TextBox8" CssClass="col-md-2 control-label">Phone Contact</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox8" TextMode="number" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox8"
                    CssClass="text-danger" ErrorMessage="Phone Contact field is required." />
            </div>
            <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
                <asp:Label runat="server" AssociatedControlID="TextBox9" CssClass="col-md-2 control-label">Username</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox9" TextMode="singleline" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox9"
                    CssClass="text-danger" ErrorMessage="Username field is required." />
            </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
            <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ddl_Knownby" CssClass="col-md-2 control-label">How did you hear about us?</asp:Label>
            <div class="col-md-10">
                <asp:CustomValidator ID="CustomValidator_Knownby" runat="server" ControlToValidate="ddl_Knownby" OnServerValidate="CustomValidator_Knownby_ServerValidate"  ErrorMessage="Select a type"></asp:CustomValidator>
                <asp:DropdownList runat="server" ID="ddl_Knownby" CssClass="form-control">
                    <asp:ListItem Value="0" Selected="True">--Select--</asp:ListItem>
                    <asp:ListItem>Search Engines</asp:ListItem>
         <asp:ListItem>Social Network</asp:ListItem>
         <asp:ListItem>Newspaper Ad</asp:ListItem>
         <asp:ListItem>Television Ad</asp:ListItem>
                <asp:ListItem>Friend</asp:ListItem>
                <asp:ListItem>Events</asp:ListItem>
                <asp:ListItem>Blog</asp:ListItem>
                    </asp:DropdownList>
                 </div>
                <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="chkContactby" CssClass="col-md-2 control-label">How would you like us to contact you?</asp:Label>
                                    <div class="col-md-10">
                        <asp:CustomValidator ID="CustomValidator_Contactby" runat="server" OnServerValidate="CustomValidator_Contactby_ServerValidate"  ErrorMessage="Select a type"></asp:CustomValidator>

                        <asp:CheckBoxList runat="server" ID="chkContactby" CssClass="form-control">
                            <asp:ListItem>Phone</asp:ListItem>
                            <asp:ListItem>Email</asp:ListItem>
                            <asp:ListItem>Letter</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>                
                    </div>
       </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" CausesValidation="true" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
            </div>
        </div>
    </div>
</asp:Content>
