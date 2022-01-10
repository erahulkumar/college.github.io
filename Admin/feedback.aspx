<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Admin_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-sm-12 change"><h1 style="background:linear-gradient(#ef6060,white);height:50px; text-align:center;margin:0px;padding:0px;">Feedback</h1></div>
        <div class="col-sm-12" style="height:50px;"></div>
    <div class="col-sm-12">


        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="fd_name" HeaderText="Name" SortExpression="fd_name" />
                <asp:BoundField DataField="fd_mail" HeaderText="E-mail ID" SortExpression="fd_mail" />
                <asp:BoundField DataField="fd_mobile" HeaderText="Mobile" SortExpression="fd_mobile" />
                <asp:BoundField DataField="fd_msg" HeaderText="Message" SortExpression="fd_msg" />
                <asp:BoundField DataField="fd_date" HeaderText="Date & Time" SortExpression="fd_date" />
                <asp:CommandField HeaderText="Delete Operation" ShowDeleteButton="True" ButtonType="Button"/>
                <asp:CommandField HeaderText="Update Operation" ShowEditButton="True" ButtonType="Button"/>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />


        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:rdsingh %>" DeleteCommand="DELETE FROM [feedback] WHERE [id] = @id" InsertCommand="INSERT INTO [feedback] ([fd_name], [fd_mail], [fd_mobile], [fd_msg], [fd_date]) VALUES (@fd_name, @fd_mail, @fd_mobile, @fd_msg, @fd_date)" SelectCommand="SELECT * FROM [feedback] ORDER BY [id] DESC" UpdateCommand="UPDATE [feedback] SET [fd_name] = @fd_name, [fd_mail] = @fd_mail, [fd_mobile] = @fd_mobile, [fd_msg] = @fd_msg, [fd_date] = @fd_date WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fd_name" Type="String" />
                <asp:Parameter Name="fd_mail" Type="String" />
                <asp:Parameter Name="fd_mobile" Type="String" />
                <asp:Parameter Name="fd_msg" Type="String" />
                <asp:Parameter Name="fd_date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fd_name" Type="String" />
                <asp:Parameter Name="fd_mail" Type="String" />
                <asp:Parameter Name="fd_mobile" Type="String" />
                <asp:Parameter Name="fd_msg" Type="String" />
                <asp:Parameter Name="fd_date" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
       
    </div>

</asp:Content>

