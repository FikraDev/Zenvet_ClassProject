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


                </div>

                <div class="div2">

                    <asp:Label ID="Label1" Text="Owners Name" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtOwner" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div3">

                    <asp:Label ID="Label2" Text="Gender" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtGender" MaxLength="1"></asp:TextBox>

                </div>

                <div class="div4">

                    <asp:Label ID="Label3" Text="Telephone Number" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtNumber" MaxLength="12"></asp:TextBox>

                </div>

                <div class="div5">

                    <asp:Label ID="Label4" Text="Address" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtAddress" MaxLength="255"></asp:TextBox>

                </div>


                <div class="div6">

                    <asp:Label ID="Label5" Text="Breed" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtBreed" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div7">

                    <asp:Label ID="Label6" Text="Email Address" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtemail" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div8">

                    <asp:Label ID="Label7" Text="Appointment Date" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtApptDate" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div8">

                    <asp:Label ID="Label9" Text="Appointment Time" runat="server" CssClass="lblLabels" />

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtApptTime" MaxLength="255"></asp:TextBox>

                </div>

                <div class="div9">
                    
                    <asp:Label id="Label8" Text="Employee ID" runat="server" CssClass="lblLabels"/>

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtEmpId" MaxLength="1"></asp:TextBox>
                    
                </div>

                <div class="btnDiv">
                    <asp:Button runat="server" Text="Generate" CssClass="Generate-Btn" ID="generatebutton" OnClick="generatebutton_Click"/>
                    <asp:Button runat="server" Text="Update" CssClass="Update-Btn" ID="updatebutton" OnClick="updatebutton_Click"/>
                    <asp:Button runat="server" Text="Cancel" CssClass="Cancel-Btn" ID="cancelbutton" OnClick="cancelbutton_Click"/>
                </div>

                <div>
                    <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                </div>


            </form>
        </div>
    </div>
</asp:Content>
