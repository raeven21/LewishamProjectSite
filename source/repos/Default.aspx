<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LewishamProjectSite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

            <div class="JmbHP">
        <h1>Digital Transformation Team</h1>
        <p class="lead">Welcome to the unofficial project website for the Lewisham Digital Transformation team</p>
        <p><a href="About.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <h1 class="text-center"><asp:LoginName ID="LoginName2" runat="server" FormatString="Welcome, {0}"  /></h1>
    <br />
    <br />
    <div class="row">
        <div class="text-center">
        <div class="col-md-4">
           <div id="BoxColour">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Font-Size="60px" HorizontalAlign="Center">
                    <ItemTemplate>
                        
                        <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
  
                    </ItemTemplate>
                </asp:DataList>
                    
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectManagerConnectionString3 %>" SelectCommand="SELECT COUNT(projectId) AS Expr1 FROM project"></asp:SqlDataSource>
                    <h6>Ongoing Project</h6>
            
           
            <p>
                <a class="btn btn-default" href="ProjectList.aspx">Learn more &raquo;</a>
            </p>
        </div>
            </div>
        <div class="col-md-4">
           <div id="BoxColour-2">
               <asp:DataList ID="DataList2" runat="server" HorizontalAlign="Center" Font-Size="60px" DataSourceID="SqlDataSource2">
                   <ItemTemplate>
                       <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />

                   </ItemTemplate>
               </asp:DataList>
              
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectManagerConnectionString3 %>" SelectCommand="SELECT COUNT(employeeId) AS Expr1 FROM employees"></asp:SqlDataSource>
              
              <h6>Members of the Team</h6>
               
            <p>
                <a class="btn btn-default" href="EmployeeList.aspx">Learn more &raquo;</a>
            </p>
        </div>
            </div>

        <div class="col-md-4">
            <div id="BoxColour-3">

              <asp:Label runat="server" ID="status" Text="Busy" Font-Size="60px"></asp:Label>
                <p></p>
                <h6>Status</h6>
                <p>
                <asp:Button runat="server" ID="btnstatus" CssClass="btn btn-default" OnClick="Unnamed_Click" Text="Free"/>
                   
            </p>
        </div>
    </div>
        </div>
    </div>
    <br />
    <div class="text-center"><h2>Ongoing Projects</h2>
    <br />
    <br />
 <h4><%--Project Timeline - This image details the time for all of the projects under the paperless project umbrella, the paperless project is aimed at have a more agile working approach and paperless office. Under the paperless project is:
<br />
<br />

Mobile and Laptop Rollout<br />
SharePoint<br />
New intranet<br />
Oracle Cloud<br />
Scanning<br />
Digital Courts<br />
Paperless Council Meeting<br />
Better Office Space - Office Refurbishment<br />
     
     <br />
     <br />--%>
Our mission is to make Lewisham the best place in London to live, work and learn. Our challenge is to do this in the context of increasing financial pressures. Over the past year the Smarter Working Programme has worked with different services to understand how we can work in a smarter way to meet this challenge while continuing to improve our services. 
   </h4>
    <br />
    <br />
 
<img src="Images/paperless%20pic.png" id="paperlessImg" style="border-radius:8px; margin-left:auto; margin-right:auto; width:700px"/>

        </div>
    <br />
    <a class="btn btn-default" href="ProjectList.aspx"> More &raquo;</a>

    
</asp:Content>
