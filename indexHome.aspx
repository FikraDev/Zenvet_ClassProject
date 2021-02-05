<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="indexHome.aspx.cs" Inherits="ZenVet_20191021.indexHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheetStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="indexpageContainer">
        <div class="indexpageContainerInner">
            <form runat="server">

                <div>
                    <asp:Literal runat="server"><h1 class="index-title">WELCOME <br />TO THE <br />ZenVet Pet Management System</h1></asp:Literal>
                </div>

                <div class="index-btnDiv">
                    <asp:Button runat="server" CssClass="index-btn" ID="indexlogin" Text="Enter" OnClick="indexlogin_Click" />

                </div>
            </form>




        </div>



    </div>


</asp:Content>
