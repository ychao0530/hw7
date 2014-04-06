<%@ Page Title="" Language="VB" MasterPageFile="~/lolMasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="75px" Width="125px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" AutoGenerateRows="False" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <Fields>
        <asp:BoundField ConvertEmptyStringToNull="False" DataField="champion" HeaderText="Champion" SortExpression="champion" />
        <asp:BoundField DataField="nickname" HeaderText="Nickname" SortExpression="nickname" />
        <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
        <asp:BoundField DataField="ability" HeaderText="Ability" SortExpression="ability" />
        <asp:BoundField DataField="group" HeaderText="Group" SortExpression="group" />
        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
    </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
</asp:Content>

