<%@ Page Language="C#"  Title="All information" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeProjects.aspx.cs" Inherits="LewishamProjectSite.EmployeeProjects" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="JmbEmpPro">
      
       <div class="text-center">
          
    <%--<p style="vertical-align:central">More Details</p> <br />--%>
       </div>
       </div>
      <br />
    <div class="text-center">
     <div class="container">
         <h1>More Details</h1><br />
         <p>The full details of our team and the project ongoing</p><br />
      </div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" RepeatColumns="2" RepeatDirection="Horizontal" CellPadding="60" CellSpacing="40" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
        <ItemTemplate>
            
            <asp:Label ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
            <asp:Label ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' />
            <br />

            <asp:Label ID="roleLabel" runat="server" Text='<%# Eval("role") %>' />
            <br />

            <asp:Label ID="emailaddressLabel" runat="server" Text='<%# Eval("emailaddress") %>' />
            <br />

            <asp:Label ID="projectLabel" runat="server" Text='<%# Eval("project") %>' />
            <br />
            Deadline:
            <asp:Label ID="deadlineLabel" runat="server" Text='<%# Eval("deadline") %>' />
            <br />
<br />
        </ItemTemplate>
        <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectManagerConnectionString3 %>" SelectCommand="SELECT employees.firstname, employees.lastname, employees.role, employees.emailaddress, projectEmp.project, project.deadline FROM employees INNER JOIN projectEmp ON employees.employeeId = projectEmp.employeeId INNER JOIN project ON projectEmp.projectId = project.projectId"></asp:SqlDataSource>

    
   

    </div>
      <p>
                <a class="btn btn-default" href="EmployeeList.aspx">Back &raquo;</a>
            </p>
    </asp:Content>