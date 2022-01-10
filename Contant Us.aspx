<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contant Us.aspx.cs" Inherits="Contant_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="container">

        <div class="row">
            <h5 class="con_us">Contant Us:</h5>
        </div>
        <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-9">

                <table class="table table-hover">
                    
                <tbody>
                 <tr>
                    <th scope="row">ADDRESS:</th>
                     <th scope="row">CHANDARPUR, BUSMAHUA,SAHSON, PRAYAGRAJ</th>       
                </tr>
                    <tr>
                    <th scope="row">CITY WITH PIN CODE:</th>
                     <th scope="row">PRAYAGRAJ-221507</th>       
                </tr>
                    <tr>
                    <th scope="row">MOBILE NO.:</th>
                     <th scope="row">9453029854,
                         <br />9415306432</th>       
                </tr>
                    <tr>
                    <th scope="row">PHONE NO:</th>
                     <th scope="row">05332-288088</th>       
                </tr>
                    <tr>
                    <th scope="row">FAX:</th>
                     <th scope="row">0532-2256871</th>       
                </tr>
                    <tr>
                    <th scope="row">E-MAIL ID:</th>
                     <th scope="row">rdscoedu@gmail.com,
                         <br />rdssss11@gmail.com</th>       
                </tr>
                </tbody>    
           </table>
              </div>
            <div class="col-sm-2"></div>
        </div>
    </div>
    <hr />
    <!--Map-->
    <div class="container-fluid">

       <div class="row">
            <h5 class="con_us">Google Map:</h5>
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">

                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3601.3244179049475!2d81.97033331449042!3d25.494224825843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399ab39f1df65357%3A0x92f1384f570b1aaf!2sR.D%20Singh%20College%20of%20Education!5e0!3m2!1sen!2sin!4v1595504616900!5m2!1sen!2sin" style="width:100%;height:400px;border:0;" frameborder="0" allowfullscreen="Ture" aria-hidden="false" tabindex="0"></iframe>
                </div>
            <div class="col-sm-1"></div>
        </div>

    </div>
    <!--Map-->
    <!--feedback start-->
        
    <div class="container-fluid">
        <div class="row">
            <h5 class="con_us">Feedback/QNA:</h5>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <form id="Form1" runat="server" method="post">

                    <div class="form-group">
                        <label runat="server" style="font-family:Arial;font-size:18px;color:#176ea0;">Enter Your Name :</label>
                        <asp:TextBox ID="fd_name" runat="server"  CssClass="form-control" MaxLength="32" ValidateRequestMode="Enabled" TextMode="SingleLine" Placeholder="Please enter your Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" style="font-family:Arial;font-size:18px;color:#176ea0;">Enter Your E-mail :</label>
                        <asp:TextBox ID="fd_mail" runat="server" Placeholder="Please enter your E-mail" CssClass="form-control" TextMode="Email" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" style="font-family:Arial;font-size:18px;color:#176ea0;">Enter Your Mobile No. :(+91)</label>
                        <asp:TextBox ID="fd_mobile" runat="server" Placeholder="Please enter your Mobile No. (+91) " CssClass="form-control" TextMode="Number" MaxLength="10" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label runat="server" style="font-family:Arial;font-size:18px;color:#176ea0;">Message :</label>
                        <asp:TextBox ID="fd_msg" Placeholder="Please enter your Message" runat="server"  CssClass="form-control" MaxLength="100" TextMode="MultiLine" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:TextBox>
                    </div>
                    <asp:Button runat="server" ID="btn1" CssClass="btn btn-success" Text="Submit" OnClick="btn1_Click"/>
                    <hr />
                    <asp:Label runat="server" ID="fdshow" Font-Bold="true"></asp:Label>
                </form>

            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
    <br />
    <!--feedback stop-->
</asp:Content>

