<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="principalmsg.aspx.cs" Inherits="Admin_principalmsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-12 change"><h2 style="background:linear-gradient(#ef6060,white);height:50px; text-align:center;margin:0px;padding:0px;">Principal Message Manager</h2></div>
        <div class="col-sm-12" style="height:50px;"></div>
  
    <div class="form-group">
        <label>Enter Message <span style="color:red;">(Maximum word 1000)</span></label>
        <asp:TextBox runat="server" ID="pmsg" CssClass="form-control" TextMode="MultiLine" Placeholder="Typing your message..."  Rows="5"></asp:TextBox>
    </div>
     <div class="form-group">
        <asp:Button runat="server" ID="addpsmg" OnClick="addpsmg_Click" Text="Add Message" CssClass="btn btn-success"/>
    </div>
    <hr />
    
        <asp:Label runat="server" ID="perrormsg"></asp:Label>
 <hr />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="642px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="msg" HeaderText="Message" SortExpression="msg" />
            <asp:BoundField DataField="msgdate" HeaderText="Publish Date & Time" SortExpression="msgdate" />
            <asp:CommandField HeaderText="Update Operation" ButtonType="Button" ShowEditButton="True" />
            <asp:CommandField HeaderText="Delete Operation" ButtonType="Button"  ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rdsingh %>" SelectCommand="SELECT * FROM [principalmsg] ORDER BY [id] DESC" DeleteCommand="DELETE FROM [principalmsg] WHERE [id] = @id" InsertCommand="INSERT INTO [principalmsg] ([msg], [msgdate]) VALUES (@msg, @msgdate)" UpdateCommand="UPDATE [principalmsg] SET [msg] = @msg, [msgdate] = @msgdate WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="msg" Type="String" />
            <asp:Parameter DbType="Date" Name="msgdate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="msg" Type="String" />
            <asp:Parameter DbType="Date" Name="msgdate" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

