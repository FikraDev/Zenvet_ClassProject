<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AppointmentSelectionForm.aspx.cs" Inherits="ZenVet_20191021.AppointmentSelectionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheetStyles.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="outerContainer">
        <div class="innerContainer">

            <form runat="server">

                <asp:Literal runat="server"><h3 class="appTitle">Please Select Customer Type</h3></asp:Literal>

                <div class="retCustomer">
                    <asp:Button runat="server" Text="Returning Customer" CssClass="retCust-Btn" ID="returningCustomerBtn" OnClick="returningCustomerBtn_Click"/>
                </div>

                <div class="newCustomer">
                    <asp:Button runat="server" Text="New Customer" CssClass="newCust-Btn" ID="newCustomerBtn" OnClick="newCustomerBtn_Click"/>
                </div>
            </form>


        </div>

    </div>
</asp:Content>
