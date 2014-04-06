<%@ Page Title="" Language="VB" MasterPageFile="~/lolMasterPage.master" AutoEventWireup="false" CodeFile="champion management.aspx.vb" Inherits="admin_AddNewMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
    <asp:DetailsView ID="DetailsView1" GridLines="Horizontal" CssClass="table" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" DefaultMode="Insert" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="champion" HeaderText="Champion" SortExpression="champion" />
        <asp:BoundField DataField="nickname" HeaderText="Nickname" SortExpression="nickname" />
        <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
        <asp:BoundField DataField="ability" HeaderText="Ability" SortExpression="ability" />
        <asp:BoundField DataField="group" HeaderText="Group" SortExpression="group" />
        <asp:BoundField DataField="rate" HeaderText="Use rate" SortExpression="rate" />
    </Fields>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
</asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
            </div>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Table]">
</asp:SqlDataSource>
</asp:Content>

