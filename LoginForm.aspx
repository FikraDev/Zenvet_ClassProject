<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ZenVet_20191021.LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="containerouter">
        <div class="containerinner">

            <form runat="server">
                <asp:Literal runat="server"><h3 class="loginform-title">ZenVet Login Form</h3></asp:Literal>

                <div class="userDiv">
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtUsername" placeholder="Enter Username" MaxLength="10"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="regExUsr" runat="server" ControlToValidate="txtUsername" ErrorMessage="Enter Only Numeric and characters" ValidationExpression="^[a-zA-Z0-9]+$" ForeColor="Red">*</asp:RegularExpressionValidator>

                    <asp:RequiredFieldValidator ID="rvfname" runat="server" ErrorMessage="Username Required!" ForeColor="Red" ControlToValidate="txtUsername">*</asp:RequiredFieldValidator>
                </div>

                <div class="passwordDiv">
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtPassword" placeholder="Enter Password" MaxLength="15" TextMode="Password"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="rvfPwd" runat="server" ErrorMessage="Password Required!" ForeColor="Red" ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
                </div>

                <div class="selectDiv">
                    <div>
                        <asp:DropDownList runat="server" ID="selectList" CssClass="ddList1" AutoPostBack="True">
                            <asp:ListItem Value="0">Please Select Your User Type</asp:ListItem>
                            <asp:ListItem Value="1">Ancillary</asp:ListItem>
                            <asp:ListItem Value="2">Doctor</asp:ListItem>
                            <asp:ListItem Value="3">Personal Care Attendant</asp:ListItem>
                            <asp:ListItem Value="4">Receptionist</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="btnDiv">
                    <asp:Button runat="server" CssClass="loginbutton" Text="LOGIN" ID="btnLogin" OnClick="btnLogin_Click" />
                    <asp:Button runat="server" CssClass="CnclButton" Text="CANCEL" ID="btnCancel" OnClick="btnCancel_Click" />
                </div>

                <div>
                    <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                </div>

                 <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red" />




            </form>
        </div>
    </div>
</asp:Content>
