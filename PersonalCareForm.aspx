<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PersonalCareForm.aspx.cs" Inherits="ZenVet_20191021.PersonalCareForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheetStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="PCFContainer">
        <div class="PCFContainerInner">

            <form runat="server">

                <asp:Literal runat="server"><h3 class="PCFTitle">ZenVet Personal Care Form</h3></asp:Literal>

                <div>

                    <asp:GridView runat="server" ID="gvPCForm" AutoGenerateColumns="false" class="gridPCF">
                        <Columns>
                            <asp:BoundField DataField="PetId" HeaderText="Pet ID No." />
                            <asp:BoundField DataField="EmpId" HeaderText="Employee ID No." />
                            <asp:BoundField DataField="ServicesPerformed" HeaderText="Service(s) Performed" />
                            <asp:BoundField DataField="Cost" HeaderText="Total Cost" />
                            <asp:BoundField DataField="NextAppt" HeaderText="Next Appointment" />
                            <asp:BoundField DataField="TimeofAppt" HeaderText="Time" />
                        </Columns>
                    </asp:GridView>
                </div>

                <div class="pcfDiv1">

                    <div>
                        <asp:TextBox runat="server" ID="txtPetID_PCF" class="PCFInput" placeholder="Enter Pet ID" MaxLength="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvfPID" runat="server" ErrorMessage="Pet ID Required!" ForeColor="Red" ControlToValidate="txtPetID_PCF">*</asp:RequiredFieldValidator>

                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtEmpId_PCF" class="PCFInput" placeholder="Enter Employee ID" MaxLength="10"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvEmpID" runat="server" ErrorMessage="Emp ID Required!" ForeColor="Red" ControlToValidate="txtEmpId_PCF">*</asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <asp:ListBox runat="server" ID="servicesList" CssClass="listBox1" AutoPostBack="True" SelectionMode="Multiple">
                            <asp:ListItem Text="Select Service Option" Value="0" />
                            <asp:ListItem Text="Bath-$2000.00" Value="2000" />
                            <asp:ListItem Text="Grooming-$1000.00" Value="1000" />
                            <asp:ListItem Text="Oral Care-$2000.00" Value="2500" />
                        </asp:ListBox>
                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtCost_PCF" class="PCFInput" placeholder="Total Cost"></asp:TextBox>
                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtNextApptDate" class="PCFInput" placeholder="Enter Next Appointment Date (mm-dd-yyyy)"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Date Required!" ForeColor="Red" ControlToValidate="txtNextApptDate">*</asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtTimeofAppt" class="PCFInput" placeholder="Enter Appt Time (00:00)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvfTime" runat="server" ErrorMessage="Time Required!" ForeColor="Red" ControlToValidate="txtTimeofAppt">*</asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <asp:Literal runat="server"><h3 class="costTitle">Personal Care Costs</h3></asp:Literal>

                        <p>* Bath - $2000.00</p>
                        <p>* Grooming - $1000.00</p>
                        <p>* Oral Care - $2000.00</p>

                    </div>



                    <div class="PCFBtnDiv">
                        <asp:Button runat="server" Text="Submit" ID="PCFSubmit" CssClass="pcfSbtn" OnClick="PCFSubmit_Click" />
                        <asp:Button runat="server" Text="Cancel" ID="PCFCancel" CssClass="pcfCbtn" OnClick="PCFCancel_Click" />
                    </div>


                    <div>
                        <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                    </div>


                     <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red" />

                    


                </div>
            </form>
        </div>
    </div>
</asp:Content>
