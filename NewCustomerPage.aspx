<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewCustomerPage.aspx.cs" Inherits="ZenVet_20191021.NewCustomerPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheetStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="newCustContainer">
        <div class="newCustContainerinner">
            <form runat="server">
                <asp:Literal runat="server"><h3 class="NweCustTitle">Pet Management System</h3></asp:Literal>

                <asp:Literal runat="server"><h2 class="NewCustTitle_2">New Customer</h2></asp:Literal>

                <div class="newCustdiv1">

                    <asp:Label ID="label0" Text="Pet Identification No." runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtPetID_NC" MaxLength="25"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvfPID" runat="server" ErrorMessage="Pet ID Required!" ForeColor="Red" ControlToValidate="txtPetID_NC">*</asp:RequiredFieldValidator>

                </div>

                <div class="div2">

                    <asp:Label ID="Label1" Text="Owners Name" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtOwner_NC" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvowner" runat="server" ErrorMessage="Owner's Name Required!" ForeColor="Red" ControlToValidate="txtOwner_NC">*</asp:RequiredFieldValidator>
                </div>

                <div class="div3">

                    <asp:Label ID="Label2" Text="Gender" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtGender_NC" MaxLength="1"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvgender" runat="server" ErrorMessage="Gender Required!" ForeColor="Red" ControlToValidate="txtGender_NC">*</asp:RequiredFieldValidator>

                </div>

                <div class="div4">

                    <asp:Label ID="Label3" Text="Telephone Number" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtNumber_NC" MaxLength="12"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtel" runat="server" ErrorMessage="Tel No. Required!" ForeColor="Red" ControlToValidate="txtNumber_NC">*</asp:RequiredFieldValidator>


                </div>

                <div class="div5">

                    <asp:Label ID="Label4" Text="Address" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtAddress_NC" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address Required!" ForeColor="Red" ControlToValidate="txtAddress_NC">*</asp:RequiredFieldValidator>

                </div>


                <div class="div6">

                    <asp:Label ID="Label5" Text="Breed" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtBreed_NC" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvBreed" runat="server" ErrorMessage="Animal Breed Required!" ForeColor="Red" ControlToValidate="txtBreed_NC">*</asp:RequiredFieldValidator>


                </div>

                <div class="div7">

                    <asp:Label ID="Label6" Text="Email Address" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtEmail_NC" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Valid Email Required!" ForeColor="Red" ControlToValidate="txtEmail_NC">*</asp:RequiredFieldValidator>

                </div>

                <div class="div8">

                    <asp:Label ID="Label7" Text="Appointment Date" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtApptDate_NC" MaxLength="255" placeholder="mm/dd/yyyy"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvApptDate" runat="server" ErrorMessage="Date Required!" ForeColor="Red" ControlToValidate="txtApptDate_NC">*</asp:RequiredFieldValidator>
                   
                    <asp:RegularExpressionValidator ValidationExpression="^([0-9]|0[1-9]|1[012])\/([0-9]|0[1-9]|[12][0-9]|3[01])\/(19|20)\d\d$"
                        ControlToValidate="txtApptDate_NC" ErrorMessage="Invalid Format. Use MM/DD/YYYY" runat="server" CssClass="RegExVal">
                    </asp:RegularExpressionValidator>

                </div>

                <div class="div8">

                    <asp:Label ID="Label9" Text="Appointment Time" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtApptTime_NC" MaxLength="255" placeholder="Enter Time (00:00)"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvTime" runat="server" ErrorMessage="Time Required!" ForeColor="Red" ControlToValidate="txtApptTime_NC">*</asp:RequiredFieldValidator>

                </div>

                <div class="div9">

                    <asp:Label ID="Label8" Text="Employee ID" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtEmpId_NC" MaxLength="10"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvEmpID" runat="server" ErrorMessage="Emp ID Required!" ForeColor="Red" ControlToValidate="txtEmpId_NC">*</asp:RequiredFieldValidator>

                </div>

                <div class="btnDiv">
                    <asp:Button runat="server" Text="Register" CssClass="Register-Btn" ID="registerbutton" OnClick="registerbutton_Click" />
                    <asp:Button runat="server" Text="Cancel" CssClass="Cancel-btn_NC" ID="cancelbutton_NC" OnClick="cancelbutton_NC_Click" />
                </div>

                <div>
                    <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                </div>

                <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red" />
            </form>
        </div>
    </div>
</asp:Content>
