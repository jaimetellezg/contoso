﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Students2.aspx.vb" Inherits="ContosoUniversity.Students2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/AddStudent2.aspx" Text="Add New Student" runat="server" />
    <br /><br />
    <asp:Label ID="Label1" Text="Show:" runat="server" />
    <asp:DropDownList AutoPostBack="true" ID="DisplayYear" runat="server">
        <asp:ListItem Text="All" Value="" />
        <asp:ListItem Text="Freshman" />
        <asp:ListItem Text="Sophomore" />
        <asp:ListItem Text="Junior" />
        <asp:ListItem Text="Senior" />
    </asp:DropDownList>
    <asp:ValidationSummary ID="ValidationSummary1" ShowModelStateErrors="true" runat="server" />
    <asp:GridView runat="server" ID="studentsGrid"
        ItemType="ContosoUniversity.Models.Student" DataKeyNames="StudentID" 
        SelectMethod="GetStudents"
        UpdateMethod="UpdateStudent" DeleteMethod="DeleteStudent"
        AllowSorting="true" AllowPaging="true" PageSize="4"
        AutoGenerateEditButton="true" AutoGenerateDeleteButton="true"  
        AutoGenerateColumns="false"
        OnCallingDataMethods="studentsGrid_CallingDataMethods">
        <Columns>
            <asp:DynamicField DataField="StudentID" />
            <asp:DynamicField DataField="LastName" />
            <asp:DynamicField DataField="FirstName" />
            <asp:DynamicField DataField="Year" />
            <asp:DynamicField DataField="EnrollmentDate" />          
            <asp:TemplateField HeaderText="Total Credits">
              <ItemTemplate>
                <asp:Label ID="Label1" Text="<%# Item.Enrollments.Sum(Function(en) en.Course.Credits) %>" 
                    runat="server" />
              </ItemTemplate>
            </asp:TemplateField>   
            <asp:HyperLinkField Text="Courses" DataNavigateUrlFormatString="~/Courses2.aspx?StudentID={0}"
                DataNavigateUrlFields="StudentID" />      
        </Columns>
    </asp:GridView>
    <br /><br />
    <asp:Label ID="Label3" Text="Using business logic class" ForeColor="Red" runat="server" />
</asp:Content>
