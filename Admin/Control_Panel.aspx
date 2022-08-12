<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Control_Panel.aspx.cs" Inherits="Admin_Control_Panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
<div class="col-sm-12 change"><h2 style="background:linear-gradient(#ef6060,white);height:50px; text-align:center;margin:0px;padding:0px;">Control Panel Menu</h2></div>
 </div>
    <hr/>
   <div class="row">
        <div class="col-sm-4">
          <asp:Button runat="server" CssClass="btn btn-outline-info btn-block sp1" Text="Announcement News Manager" ID="news" OnClick="news_Click" />
         </div>
        <div class="col-sm-4">
           <asp:Button runat="server" CssClass="btn btn-outline-info btn-block sp1" Text="Principal Message Manager" ID="msg" OnClick="msg_Click" />
        </div>
          <div class="col-sm-4">
              <asp:Button runat="server" CssClass="btn btn-outline-info btn-block sp1" Text="Feedback Manager" ID="feedback" OnClick="feedback_Click"/>
       </div>
   </div>
    <br />
   <div class="row">
        
        <div class="col-sm-4">
          <asp:Button runat="server" CssClass="btn btn-outline-info btn-block sp1" Text="Change Password" ID="pass" OnClick="pass_Click"/>
         </div>
        <div class="col-sm-4">
           <asp:Button runat="server" CssClass="btn btn-outline-info btn-block sp1" Text="empty"/>
        </div>
          <div class="col-sm-4">
              <asp:Button runat="server" OnClick="Form_Click" CssClass="btn btn-outline-info btn-block sp1" Text="Form"/>
         </div>
    </div>
    <hr />
</asp:Content>

