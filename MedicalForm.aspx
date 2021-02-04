<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MedicalForm.aspx.cs" Inherits="ZenVet_20191021.MedicalForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheetStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="medFromContainer">
        <div class="medFormContainerInner">

            <form runat="server">

                <asp:Literal runat="server"><h3 class="medFormTitle">ZenVet Medical Form</h3></asp:Literal>

                <div>

                    <asp:GridView runat="server" ID="gvMedForm" AutoGenerateColumns="false" class="gridx">
                        <columns>
                            <asp:BoundField DataField="PetId" HeaderText="Pet ID No." />
                            <asp:BoundField DataField="EmpId" HeaderText="Employee ID No." />
                            <asp:BoundField DataField="Complaint" HeaderText="Complaint" />
                            <asp:BoundField DataField="TreatmentOption" HeaderText="Treatment" />
                            <asp:BoundField DataField="Drug" HeaderText="Medication Prescribed" />
                            <asp:BoundField DataField="SurgeryDate" HeaderText="Surgery Date" />
                            <asp:BoundField DataField="SurgeryTime" HeaderText="Surgery Time" />
                            <asp:BoundField DataField="Cost" HeaderText="Cost" />
                        </columns>
                    </asp:GridView>
                </div>

                <div class="medFormDiv1">

                    <div>
                        <asp:TextBox runat="server" ID="txtPetID_MF" class="MedFormInput" placeholder="Enter Pet ID"></asp:TextBox>
                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtEmpId_MF" class="MedFormInput" placeholder="Enter Employee ID"></asp:TextBox>
                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtComplaint" class="MedFormInput" placeholder="Enter Commplaint"></asp:TextBox>
                    </div>


                    <div>
                        <asp:DropDownList runat="server" ID="treatmentList" CssClass="ddlist2" AutoPostBack="True">
                            <asp:ListItem Value="0">Select Treatment Option</asp:ListItem>
                            <asp:ListItem Value="Medication">Medication</asp:ListItem>
                            <asp:ListItem Value="Operation">Operation</asp:ListItem>
                        </asp:DropDownList>
                    </div>


                    <div>
                        <asp:TextBox runat="server" ID="txtDrug" class="MedFormInput" placeholder="Drug Dispensed"></asp:TextBox>
                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtDosage" class="MedFormInput" placeholder="Drug Dosage"></asp:TextBox>
                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtSugeryDate" class="MedFormInput" placeholder="Enter Surgery Date (mm-dd-yyyy)"></asp:TextBox>
                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtSurgeryTime" class="MedFormInput" placeholder="Enter Surgery Time (00:00)"></asp:TextBox>
                    </div>

                    <div>
                        <asp:TextBox runat="server" ID="txtCost" class="MedFormInput" placeholder="Enter Total Cost"></asp:TextBox>
                    </div>

                    <div class="medFormBtnDiv">
                        <asp:Button runat="server" Text="Submit" id="medformSubmit" CssClass="medfrmSbtn" OnClick="medformSubmit_Click"/>
                        <asp:Button runat="server" Text="Cancel" id="medformCancel" CssClass="medfrmCbtn" OnClick="medformCancel_Click"/>
                    </div>

                    <div>
                    <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                </div>


                </div>
            </form>
        </div>
    </div>
</asp:Content>
