<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReturningCustomersPage.aspx.cs" Inherits="ZenVet_20191021.ReturningCustomersPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheetStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="outer">
        <div class="inner">
            <form runat="server">
                <asp:Literal runat="server"><h3 class="RetCustTitle">Pet Management System</h3></asp:Literal>

                <asp:Literal runat="server"><h2 class="RetCustTitle_2">Returning Customers</h2></asp:Literal>

                <div class="div1">

                    <asp:Label ID="label0" Text="Pet Identification No." runat="server" CssClass="lblLabels" />
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtPetID" MaxLength="25"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rvfPID" runat="server" ErrorMessage="Pet ID Required!" ForeColor="Red" ControlToValidate="txtPetID">*</asp:RequiredFieldValidator>
                </div>

                <div class="div2">

                    <asp:Label ID="Label1" Text="Owners Name" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtOwner" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvOwner" runat="server" ErrorMessage="Owner's Name Required!" ForeColor="Red" ControlToValidate="txtOwner">*</asp:RequiredFieldValidator>

                </div>

                <div class="div3">

                    <asp:Label ID="Label2" Text="Gender" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtGender" MaxLength="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ErrorMessage="Gender Required!" ForeColor="Red" ControlToValidate="txtGender">*</asp:RequiredFieldValidator>

                </div>

                <div class="div4">

                    <asp:Label ID="Label3" Text="Telephone Number" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtNumber" MaxLength="12"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTel" runat="server" ErrorMessage="Tel No.Required!" ForeColor="Red" ControlToValidate="txtNumber">*</asp:RequiredFieldValidator>

                </div>

                <div class="div5">

                    <asp:Label ID="Label4" Text="Address" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtAddress" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddr" runat="server" ErrorMessage="Address Required!" ForeColor="Red" ControlToValidate="txtAddress">*</asp:RequiredFieldValidator>
                </div>


                <div class="div6">

                    <asp:Label ID="Label5" Text="Breed" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtBreed" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvBreed" runat="server" ErrorMessage="Breed Required!" ForeColor="Red" ControlToValidate="txtBreed">*</asp:RequiredFieldValidator>

                </div>

                <div class="div7">

                    <asp:Label ID="Label6" Text="Email Address" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtemail" MaxLength="255"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rvfEmail" runat="server" ErrorMessage="Email Field!" ForeColor="Red" ControlToValidate="txtemail">*</asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="regValEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Email is not well formed" ForeColor="Red" ControlToValidate="txtemail">*</asp:RegularExpressionValidator>

                </div>

                <div class="div8">

                    <asp:Label ID="Label7" Text="Appointment Date" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtApptDate" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvApptDate" runat="server" ErrorMessage="Date Required!" ForeColor="Red" ControlToValidate="txtApptDate">*</asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ValidationExpression="^([0-9]|0[1-9]|1[012])\/([0-9]|0[1-9]|[12][0-9]|3[01])\/(19|20)\d\d$"
                        ControlToValidate="txtApptDate" ErrorMessage="Invalid Format. Use MM/DD/YYYY" runat="server" CssClass="RegExVal">
                    </asp:RegularExpressionValidator>

                </div>

                <div class="div8">

                    <asp:Label ID="Label9" Text="Appointment Time" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtApptTime" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTime" runat="server" ErrorMessage="Time Required!" ForeColor="Red" ControlToValidate="txtApptTime">*</asp:RequiredFieldValidator>

                </div>

                <div class="div9">

                    <asp:Label ID="Label8" Text="Employee ID" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtEmpId" MaxLength="1"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvEmpID" runat="server" ErrorMessage="Emp ID Required!" ForeColor="Red" ControlToValidate="txtEmpId">*</asp:RequiredFieldValidator>
                </div>

                <div class="btnDiv">
                    <asp:Button runat="server" Text="Generate" CssClass="Generate-Btn" ID="generatebutton" OnClick="generatebutton_Click" />
                    <asp:Button runat="server" Text="Update" CssClass="Update-Btn" ID="updatebutton" OnClick="updatebutton_Click" />
                    <asp:Button runat="server" Text="Cancel" CssClass="Cancel-Btn" ID="cancelbutton" OnClick="cancelbutton_Click" />
                </div>

                <div>
                    <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                </div>

                <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red" />


            </form>
        </div>
    </div>
</asp:Content>
