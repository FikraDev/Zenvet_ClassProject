<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="ZenVet_20191021.Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheetStyles.css" rel="stylesheet" />
    <style type="text/css">
        .btnCncl {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="employeesContainer">
        <div class="employeesContainerInner">

            <form runat="server">
                <asp:Literal runat="server"><h3 class="regTitle">Employee Registration</h3></asp:Literal>

                <div>
                    <asp:TextBox runat="server" CssClass="empInputs" ID="txtUsrname" placeholder="Enter Username"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExUsr" runat="server" ControlToValidate="txtUsrname" ErrorMessage="Enter Only Numeric and characters" ValidationExpression="^[a-zA-Z0-9]+$" ForeColor="Red">*</asp:RegularExpressionValidator>

                    <asp:RequiredFieldValidator ID="rvfname" runat="server" ErrorMessage="Username Required!" ForeColor="Red" ControlToValidate="txtUsrname">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="empInputs" ID="txtFname" placeholder="Enter First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvfname" runat="server" ErrorMessage="First Name Required!" ForeColor="Red" ControlToValidate="txtFname">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="empInputs" ID="txtLname" placeholder="Enter Last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvfLname" runat="server" ErrorMessage="Last Name Required!" ForeColor="Red" ControlToValidate="txtLname">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="empInputs" ID="txtDOB" placeholder="Enter DOB (mm/dd/yyyy)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ErrorMessage="DOB Required!" ForeColor="Red" ControlToValidate="txtDOB">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="empInputs" ID="txtAddress" placeholder="Enter Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address Required!" ForeColor="Red" ControlToValidate="txtAddress">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="empInputs" ID="txtEmail" placeholder="Enter valid Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvfEmail" runat="server" ErrorMessage="Email Field!" ForeColor="Red" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="regValEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Email is not well formed" ForeColor="Red" ControlToValidate="txtEmail">*</asp:RegularExpressionValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="empInputs" ID="txtTelNum" placeholder="Enter Contact Number" MaxLength="12"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTel" runat="server" ErrorMessage="Required Field!" ForeColor="Red" ControlToValidate="txtTelNum">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="empInputs" ID="txtPosition" placeholder="Enter Position" MaxLength="25"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPos" runat="server" ErrorMessage="Required Field!" ForeColor="Red" ControlToValidate="txtPosition">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="empInputs" ID="txtPwdEmp" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExPwd" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,15}$" runat="server" ErrorMessage="Password must be between 5-25 Characters" ForeColor="Red" ControlToValidate="txtPwdEmp">*</asp:RegularExpressionValidator>

                    <asp:RequiredFieldValidator ID="rvfpwd" runat="server" ErrorMessage="Password Required!" ForeColor="Red" ControlToValidate="txtPwdEmp">*</asp:RequiredFieldValidator>
                </div>

                <div class="EmpbtnDiv">
                    <asp:Button runat="server" CssClass="btnSign" ID="btnSignup" Text="Sign Up" OnClick="btnSignup_Click" />
                    <asp:Button runat="server" CssClass="btnCncl" CausesValidation="false" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
                </div>

                <div>
                    <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                </div>

                <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red" />

            </form>
        </div>
    </div>
</asp:Content>
