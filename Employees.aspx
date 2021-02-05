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
                </div>

                <div>
                      <asp:TextBox runat="server" CssClass="empInputs" ID="txtFname" placeholder="Enter First Name"></asp:TextBox>
                </div>

                <div>
                      <asp:TextBox runat="server" CssClass="empInputs" ID="txtLname" placeholder="Enter Last Name"></asp:TextBox>
                </div>

                <div>
                      <asp:TextBox runat="server" CssClass="empInputs" ID="txtDOB" placeholder="Enter DOB (mm/dd/yyyy)"></asp:TextBox>
                </div>

                <div>
                      <asp:TextBox runat="server" CssClass="empInputs" ID="txtAddress" placeholder="Enter Address"></asp:TextBox>
                </div>

                <div>
                      <asp:TextBox runat="server" CssClass="empInputs" ID="txtEmail" placeholder="Enter valid Email"></asp:TextBox>
                </div>

                <div>
                      <asp:TextBox runat="server" CssClass="empInputs" ID="txtTelNum" placeholder="Enter Contact Number"></asp:TextBox>
                </div>

                <div>
                      <asp:TextBox runat="server" CssClass="empInputs" ID="txtPosition" placeholder="Enter Position"></asp:TextBox>
                </div>

                <div>
                      <asp:TextBox runat="server" CssClass="empInputs" ID="txtPwdEmp" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                </div>

                <div class="EmpbtnDiv">
                    <asp:Button runat="server" CssClass="btnSign" ID="btnSignup" Text="Sign Up" OnClick="btnSignup_Click" />
                    <asp:Button runat="server" CssClass="btnCncl" CausesValidation="false" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
                </div>

                <div>
                    <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                </div>

            </form>
        </div>
    </div>
</asp:Content>
