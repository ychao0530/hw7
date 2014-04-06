<%@ Page Title="" Language="VB" MasterPageFile="~/lolMasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-6 col-md-offset-4 form-inline" role="form" id="search">
            <div class="form-group">
                <label class="sr-only">Search by champion Name:</label>
                <asp:TextBox ID="tbSearch" runat="server" CssClass="form-control" Placeholder="Search by champion Name"></asp:TextBox>
            
            </div>
            <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-default" />
        </div>
    </div>
    <div class="row">
    <asp:GridView ID="GridView1" GridLines="None" CssClass="table-hover table"  runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="champion" HeaderText="champion" SortExpression="champion" />
            <asp:BoundField DataField="nickname" HeaderText="nickname" SortExpression="nickname" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            <asp:BoundField DataField="ability" HeaderText="ability" SortExpression="ability" />
            <asp:BoundField DataField="group" HeaderText="group" SortExpression="group" />
            <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </div>
    </asp:Content>

