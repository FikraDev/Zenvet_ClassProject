<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MedicalForm.aspx.cs" Inherits="ZenVet_20191021.MedicalForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheetStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="medFormContainer">
        <div class="medFormContainerInner">

            <form runat="server">

                <asp:Literal runat="server"><h3 class="medFormTitle">ZenVet Medical Form</h3></asp:Literal>

                <div>

                    <asp:GridView runat="server" ID="gvMedForm" AutoGenerateColumns="false" class="gridx">
                        <Columns>
                            <asp:BoundField DataField="PetId" HeaderText="Pet ID No." />
                            <asp:BoundField DataField="EmpId" HeaderText="Employee ID No." />
                            <asp:BoundField DataField="Complaint" HeaderText="Complaint" />
                            <asp:BoundField DataField="TreatmentOption" HeaderText="Treatment" />
                            <asp:BoundField DataField="Drug" HeaderText="Medication Prescribed" />
                            <asp:BoundField DataField="SurgeryDate" HeaderText="Surgery Date" />
                            <asp:BoundField DataField="SurgeryTime" HeaderText="Surgery Time" />
                            <asp:BoundField DataField="Cost" HeaderText="Cost" />
                        </Columns>
                    </asp:GridView>
                </div>

                <div class="medFormDiv1">

                    <div>
                        <asp:TextBox runat="server" ID="txtPetID_MF" class="MedFormInput" placeholder="Enter Pet ID" MaxLength="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvfPID" runat="server" ErrorMessage="Pet ID Required!" ForeColor="Red" ControlToValidate="txtPetID_MF">*</asp:RequiredFieldValidator>
                    </div>

                </div>

                <div>
                    <asp:TextBox runat="server" ID="txtEmpId_MF" class="MedFormInput" placeholder="Enter Employee ID" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmpID" runat="server" ErrorMessage="Emp ID Required!" ForeColor="Red" ControlToValidate="txtEmpId_MF">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" ID="txtComplaint" class="MedFormInput" placeholder="Enter Commplaint"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvcomplaint" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtComplaint">*</asp:RequiredFieldValidator>
                </div>


                <div>
                    <asp:DropDownList runat="server" ID="treatmentList" CssClass="ddlist2" AutoPostBack="True">
                        <asp:ListItem Value="0">Select Treatment Option</asp:ListItem>
                        <asp:ListItem Value="M">Medication</asp:ListItem>
                        <asp:ListItem Value="O">Operation</asp:ListItem>
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

                    <asp:RegularExpressionValidator ValidationExpression="^([0-9]|0[1-9]|1[012])\/([0-9]|0[1-9]|[12][0-9]|3[01])\/(19|20)\d\d$"
                        ControlToValidate="txtSugeryDate" ErrorMessage="Invalid Format. Use MM/DD/YYYY" runat="server" CssClass="RegExVal">
                    </asp:RegularExpressionValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" ID="txtSurgeryTime" class="MedFormInput" placeholder="Enter Surgery Time (00:00)"></asp:TextBox>
                </div>

                <div>
                    <asp:TextBox runat="server" ID="txtCost" class="MedFormInput" placeholder="Enter Total Cost"></asp:TextBox>
                </div>

                <div>
                    <asp:Literal runat="server"><h3 class="costTitle1">Treatment Costs</h3></asp:Literal>

                    <p>* Medication - $5000.00</p>
                    <p>* Operation - $10000.00</p>
                </div>

                <div class="medFormBtnDiv">
                    <asp:Button runat="server" Text="Submit" ID="medformSubmit" CssClass="medfrmSbtn" OnClick="medformSubmit_Click" />
                    <asp:Button runat="server" Text="Cancel" ID="medformCancel" CssClass="medfrmCbtn" OnClick="medformCancel_Click" />
                </div>

                <div>
                    <asp:Label runat="server" ID="ErrorMessage" CssClass="errorMessageLabel"></asp:Label>
                </div>

                <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red" />
       
        </form>
    </div>
    
</asp:Content>
