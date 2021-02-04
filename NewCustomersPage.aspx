<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewCustomersPage.aspx.cs" Inherits="ZenVet_20191021.NewCustomersPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheetStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div class="newcustContainerOuter">
        <div class="newcustContainerInner">
            <form runat="server">
                <asp:Literal runat="server"><h3 class="NewCustTitle">Pet Management System</h3></asp:Literal>

                <asp:Literal runat="server"><h2 class="NewCustTitle_2">New Customers</h2></asp:Literal>

                <div class="newcustdiv1">

                    <asp:Label ID="label0" Text="Pet Identification No." runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncPetID" MaxLength="25"></asp:TextBox>

                </div>

                <div class="div2">

                    <asp:Label ID="Label1" Text="Owners Name" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncOwner" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div3">

                    <asp:Label ID="Label2" Text="Gender" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncGender" MaxLength="1"></asp:TextBox>

                </div>

                <div class="div4">

                    <asp:Label ID="Label3" Text="Telephone Number" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncNumber" MaxLength="12"></asp:TextBox>

                </div>

                <div class="div5">

                    <asp:Label ID="Label4" Text="Address" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncAddress" MaxLength="255"></asp:TextBox>

                </div>


                <div class="div6">

                    <asp:Label ID="Label5" Text="Breed" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncBreed" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div7">

                    <asp:Label ID="Label6" Text="Email Address" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncEmail" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div8">

                    <asp:Label ID="Label7" Text="Appointment Date" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncApptDate" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div8">

                    <asp:Label ID="Label9" Text="Appointment Time" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncApptTime" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div9">
                    
                    <asp:Label id="Label8" Text="Employee ID" runat="server" CssClass="lblLabels"/>

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtncEmpId" MaxLength="1"></asp:TextBox>
                    
                </div>

                <div class="btnDiv">
                    <asp:Button runat="server" Text="Register" CssClass="Register-Btn" ID="registerbutton" />
                    <asp:Button runat="server" Text="Cancel" CssClass="ncCancel-Btn" ID="ncCancelbutton" />
                </div>

                <div>
                    <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                </div>


            </form>
        </div>
    </div>

</asp:Content>
