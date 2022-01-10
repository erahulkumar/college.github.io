<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

   
        <div class="row">
            <marquee scolldelay="200" scrollamount="3" onmouseover="this.stop();" direction="left" onmouseout="this.start();">

                    

               <h3  style="font-family:Arial;font-size:20px;"><img src="images/star.gif" class="img-fluid" /> 
                <b style="color:#f00;">Addmission Open :</b> B.Ed Session 2020-2021 | College Code-H069</h3>
                
            </marquee>
            
        
    </div>
     
    <!--Start slider -->
    
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-7">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
       
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
        <div class="carousel-inner">
            <div class="carousel-item active manageimg">
             <img class="d-block w-100" src="images/classroom1.jpg" alt="Responsive image"/>
            
            </div>
            <div class="carousel-item manageimg"">
            <img class="d-block w-100" src="images/img1.jpg" alt="Second slide"/>

            </div>
            <div class="carousel-item manageimg">
            <img class="d-block w-100" src="images/img3.jpg" alt="Third slide"/>

            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
        </a>
          
    </div>
</div><br />
            <!--ANNOUNCEMENTS Start-->
            <div class="col-sm-3">
            <div class="row">
                
                <h4 style="text-decoration: underline;">ANNOUNCEMENTS:    
                </h4>
                <hr />
            </div>
            <div class="row">

                <marquee direction="up" scrollamount="2" style="height:300px;" onmouseover="this.stop();" onmouseout="this.start();">

                    <ul>

                        <asp:GridView ID="GridView1" BorderColor="White" BorderWidth="0" runat="server" DataSourceID="sdi1" AutoGenerateColumns="false">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                             <img src="images/star.gif" class="img-fluid" />
                                <span style="color:red;font-family:Arial;font-size:15px;">
                                 <%# Eval("news") %>
                                </span>
                                 <img src="images/new.gif" class="img-fluid" />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>
                <asp:SqlDataSource runat="server" ID="sdi1" ConnectionString="<%$ ConnectionStrings:rdsingh %>" SelectCommand="select * from news">

                </asp:SqlDataSource>

                    </ul>
                </marquee>

            </div>
            </div>
            <!--ANNOUNCEMENTS Stop-->
            <div class="col-sm-1"></div>
            </div>
        

    <!--Stop slider-->
    <div style="height:50px;"></div>
    
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-7" style="font-family:Arial;">
                <div class="row">
                    <h3 style="background-color:#cfcaca;">&nbsp;R.D Singh College Of Education</h3>
                </div>
                <br />
                <p style="text-align:justify;">To the purpose of society’s literate <span style="color:#f00;font-weight:bold;">“R.D. SINGH COLLEGE OF EDUCATION”</span> is established at <span style="color:#122675;font-weight:bold;">CHANDARPUR, BUSMAHUA,SAHSON PRAYAGRAJ, UTTAR PRADESH -221507.</span></p>
                    <br /><br />
                  <p style="text-align:justify;">  This college dedicated to providing quality education to the peoples. This college boasts of finest courses and best standards and has earned a reputation for itself. This college has seen churned out some very fine students who have made a mark for themselves in the society. Through this web site, we have made an attempt to present before you some of the features that one can expect from a good institution. Please feel free to get in touch with us incase of any query.</p>
            </div>
            <div class="col-sm-3">

                <div class="row">
                
                <h4 style="text-decoration: underline;">Principal Message:    
                </h4>
                <hr />
            </div>
            <div class="row">

                <marquee direction="up" scrollamount="2" style="height:300px;" onmouseover="this.stop();" onmouseout="this.start();">

                    <ul>

                        <asp:GridView ID="GridView2" BorderColor="White" BorderWidth="0" runat="server" DataSourceID="sdi2" AutoGenerateColumns="false">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                             <img src="images/star.gif" class="img-fluid" />
                                <span style="color:blue;font-family:Arial;font-size:15px;">
                                 <%# Eval("msg") %>
                                </span>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>
                <asp:SqlDataSource runat="server" ID="sdi2" ConnectionString="<%$ ConnectionStrings:rdsingh %>" SelectCommand="select * from principalmsg">

                </asp:SqlDataSource>

                    </ul>
                </marquee>

            </div>



            </div>
            <div class="col-sm-1"></div>
        </div>
    
    <br />
    <br />
    <!--Quick Link-->

    <div class="container-fluid">
        <div class="row">

            <div class="col-sm-1"></div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                <a href="http://www.ncte-india.org/" target="_blank" class="btn btn-primary btn-lg btn-block">NCTE</a>
            </div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                <a  href="http://www.scertup.co.in/" target="_blank" class="btn btn-success btn-lg btn-block">SCERTUP</a>
            </div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                <a href="upload/B.ED%20UPDATED%20SYLLABUS_10-12-2018.pdf" target="_blank" class="btn btn-warning btn-lg btn-block">D.El.Ed. Course 2020-21</a>
            </div>
            <div class="col-sm-1"></div>
                    
                   
           
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">

            <div class="col-sm-1"></div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                 <a  href="upload/Yearly Fee Charge.pdf" target="_blank" class="btn btn-info btn-lg btn-block">Yearly Fees Charge</a>
            </div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                <a  href="upload/Books.pdf" target="_blank" class="btn btn-danger btn-lg btn-block">Books</a>
            </div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                 <a href="Affilation.aspx" target="_blank" class="btn btn-primary btn-lg btn-block">Affilation</a>
            </div>
            <div class="col-sm-1"></div>
                    
                   
           
        </div>
    </div>
     <div class="container-fluid">
        <div class="row">

            <div class="col-sm-1"></div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                 <a  href="#" target="_blank" class="btn btn-success btn-lg btn-block">Admission Open</a>
            </div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                <a href="#" target="_blank" class="btn btn-warning btn-lg btn-block">Courses</a>
            </div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                  <a  href="#" target="_blank" class="btn btn-info btn-lg btn-block">Academic Session</a>
            </div>
            <div class="col-sm-1"></div>
                    
                   
           
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">

            <div class="col-sm-1"></div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                 <a  href="Faculties-Profile.aspx" target="_blank" class="btn btn-secondary btn-lg btn-block">Faculties Profile</a>
            </div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                <a  href="#" target="_blank" class="btn btn-primary btn-lg btn-block">Scholorship</a>
            </div>
            <div class="col-sm-3" style="margin-left:20px;margin-top:10px;">
                  <a href="#" class="btn btn-danger btn-lg btn-block">Result Link</a>
            </div>
            <div class="col-sm-1"></div>
                    
                   
           
        </div>
    </div>
    <br />
     <!--a  href="upload/BTE-EN.pdf" target="_blank" class="btn btn-info btn-lg btn-block">B.Ed Course 2020-21</!--a>
                </div>
                 <div class="row">
                    
                    <a  href="upload/Yearly Fee Charge.pdf" target="_blank" class="btn btn-light btn-lg btn-block">Yearly Fees Charge</a>
                </div>
                 <div class="row">
                   <a  href="#" target="_blank" class="btn btn-danger btn-lg btn-block">Books</a>
                </div>

                <div class="row">
                    <a href="#" target="_blank" class="btn btn-primary btn-lg btn-block">Affilation</a>
                </div>
                 <div class="row">
                    
                    <a  href="#" target="_blank" class="btn btn-success btn-lg btn-block">Admission Open</a>
                </div>
                 <div class="row">
                     <a href="#" target="_blank" class="btn btn-warning btn-lg btn-block">Courses</a>
                </div>
                <div class="row">
                    
                    <a  href="#" target="_blank" class="btn btn-info btn-lg btn-block">Academic Session</a>
                </div>
                 <div class="row">
                    
                    <a  href="#" target="_blank" class="btn btn-light btn-lg btn-block">Faculties Profile</a>
                </div>
                 <div class="row">
                   <a  href="#" target="_blank" class="btn btn-danger btn-lg btn-block">Scholorship</a>
                </div>

                <div class="row">
                    <a href="#" class="btn btn-primary btn-lg btn-block">Result</a>
                </div>
                 <div class="row">
                    
                    <a  href="#" target="_blank" class="btn btn-success btn-lg btn-block">Teacher Approval letter</a>
                </div>

                
            </!--div-->
</asp:Content>

