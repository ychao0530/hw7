<%@ Page Title="" Language="VB" MasterPageFile="~/lolMasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="admin_MovieDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
      <div class="col-md-12">
        <asp:DetailsView ID="DetailsView1" GridLines="None" CssClass="table table-hover" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="champion" HeaderText="champion" SortExpression="champion" />
            <asp:BoundField DataField="nickname" HeaderText="nickname" SortExpression="nickname" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            <asp:BoundField DataField="ability" HeaderText="ability" SortExpression="ability" />
            <asp:BoundField DataField="group" HeaderText="group" SortExpression="group" />
            <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
        </Fields>
    </asp:DetailsView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
          </div>
         </div>
</asp:Content>

