<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MovieMeter.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
 
    <link href="StyleSheet1.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div id="div1">
           
            <h2>Login to MovieMeter</h2>

           
            <asp:ValidationSummary ID="vsSummary" runat="server" CssClass="alert alert-danger" />

         
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtEmail" 
                    ErrorMessage="Email is required." CssClass="text-danger" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                    ErrorMessage="Password is required." CssClass="text-danger" />
            </div>

            <div class="text-center">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
            </div>

            <div class="text-center mt-3">
                <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/Register.aspx" CssClass="text-primary">
                    Don't have an account? Register here
                </asp:HyperLink>
            </div>
        </div>
    </form>

   
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
