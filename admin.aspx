<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <br />
    <br />
 <div class="container-fluid">
     <div class="row">
         
         <div class="col-sm-4">

         </div>
         <div class="col-sm-4">

             <div class="col-sm-12 btn btn-info btn-lg btn-block" style="height:70px;text-align:center; margin-left:3px;">
                 <h3>Admin Login</h3>
             </div>
             <div class="col-sm-12" style="margin-top:15px;">
                 <form runat="server">
             <div class="form-group">
                <asp:label runat="server" class="adcontrol">Username</asp:label>
                <asp:TextBox runat="server" ID="txt1" Placeholder="Enter Username here.." CssClass="form-control" TextMode="Email" aria-describedby="emailHelp"></asp:TextBox>
                  <small id="emailHelp" class="form-text text-muted">We'll never share your username with anyone else.</small>

            </div>

            <div class="form-group">
             <asp:label runat="server" class="adcontrol">Password</asp:label>
              <asp:TextBox runat="server" ID="txt2" CssClass="form-control" Placeholder="Password" TextMode="Password" ></asp:TextBox>
           </div>
  
          <asp:Button runat="server" ID="login" OnClick="login_Click" CssClass="btn btn-primary adcontrol" Text="Access" />
             </form>
             </div>
         </div>
         <div class="col-sm-4"></div>
 </div>

 </div>
    <br />
    <hr />
    <br />

</asp:Content>

