﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Courses1.aspx.vb" Inherits="ContosoUniversity.Courses1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="coursesGrid"
        ItemType="ContosoUniversity.Models.Enrollment"
        SelectMethod="coursesGrid_GetData" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Title" DataField="Course.Title" />
            <asp:BoundField HeaderText="Credits" DataField="Course.Credits" />
            <asp:BoundField HeaderText="Grade" DataField="Grade" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label1" Text="No Enrolled Courses" runat="server" />
        </EmptyDataTemplate>
    </asp:GridView>
    <br /><br />
    <asp:Label ID="Label2" Text="Using code-behind file" ForeColor="Red" runat="server" />
</asp:Content>
