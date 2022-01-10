<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="Admin_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-sm-12 change"><h2 style="background:linear-gradient(#ef6060,white);height:50px; text-align:center;margin:0px;padding:0px;">Add Announcement News</h2></div>
        <div class="col-sm-12" style="height:50px;"></div>

    
    <div class="form-group">
        <label>Enter News <span style="color:red;">(Maximum word 256)</span></label>
        <asp:TextBox runat="server" ID="txt1" CssClass="form-control" TextMode="MultiLine" Placeholder="Typing your message..."  Rows="5"></asp:TextBox>
    </div>
     <div class="form-group">
        <asp:Button runat="server" OnClick="btn1_Click" ID="btn1" Text="Add News" CssClass="btn btn-success"/>
    </div>
    <hr />
    
        <asp:Label runat="server" ID="errormsg"></asp:Label>
 <hr />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="news" HeaderText="News" SortExpression="news" />
            <asp:BoundField DataField="newsdate" HeaderText="Publish Date & Time" SortExpression="newsdate" />
            <asp:CommandField HeaderText="Delete Operation" ShowDeleteButton="True" ButtonType="Button"/>
            <asp:CommandField HeaderText="Update Operation" ShowEditButton="True" ButtonType="Button"/>
            
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />



    </asp:GridView>
 
    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rdsingh %>" DeleteCommand="DELETE FROM [news] WHERE [id] = @id" InsertCommand="INSERT INTO [news] ([news], [newsdate]) VALUES (@news, @newsdate)" SelectCommand="SELECT * FROM [news] ORDER BY [id] DESC" UpdateCommand="UPDATE [news] SET [news] = @news, [newsdate] = @newsdate WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="news" Type="String" />
            <asp:Parameter Name="newsdate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="news" Type="String" />
            <asp:Parameter Name="newsdate" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

