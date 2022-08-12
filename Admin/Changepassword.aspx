<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Admin_Changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <div class="row">

        <div class="col-sm-12 change"><h1 style="background:linear-gradient(#ef6060,white);height:50px; text-align:center;margin:0px;padding:0px;">Change Paasword</h1></div>
        <div class="col-sm-12" style="height:50px;"></div>
        <div class="col-sm-12">
            <div class="row">
                
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="row">
                        <asp:Label runat="server" ID="msgshow"></asp:Label>
                </div> 
                   
                    <div class="form-group">

                        <label>Old Password :-</label>

                        <asp:TextBox runat="server" ID="txt1" CssClass="form-control" TextMode="Password" Placeholder="Enter your old password..."></asp:TextBox>
                    </div>
                    <div class="form-group">

                        <label>New Password :-</label>

                        <asp:TextBox runat="server" ID="txt2" CssClass="form-control" TextMode="Password" Placeholder="Enter your new password..." ></asp:TextBox>
                    </div>
                    <div class="form-group">

                        <label>Confirm Password :-</label>

                        <asp:TextBox runat="server" ID="txt3" CssClass="form-control" TextMode="Password" Placeholder="Enter your Confirm password..."></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="btn1" OnClick="btn1_Click" CssClass ="btn btn-success" Text="Change Password" />
                    </div>                               
                    
                </div>
                <div class="col-sm-3"></div>
          </div>
</div>
        </div>


</asp:Content>

