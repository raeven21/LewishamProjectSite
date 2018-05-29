<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="LewishamProjectSite.EmployeeList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="JmbEmp">
    <p class="text-center">Our Team</p>
        
        </div>
    <br />
    <div class="text-center">
    <h2>The Digital Transformation</h2>
    <br />
    <h4>Welcome to the our team page, this details all of the people that make up the digital transformation team.</h4>
        </div>
    <br />
<asp:ListView ID="employeelist"  DataKeyNames="employeeID" runat="server" GroupItemCount="2" ItemType="LewishamProjectSite.employee" SelectMethod="GetEmployees">
   <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table id="employeeList">
                            <tr>
                                <td>
                                  <a href="<%#: GetRouteUrl("EmployeeByNameRoute", new { firstname = Item.firstname}) %>">
          
                                    <%--  <img src="Images/grab-vector-graphic-person-icon-imagebasket-13.png" width="100" height="75" />--%>
                                      <asp:Image runat="server" ImageUrl="~/Images/user-icon-png-transparent-17.jpg" Width="100px" />
                                      <%--<asp:Image runat="server" ID="image3" ImageUrl="~/Images/grab-vector-graphic-person-icon-imagebasket-13.png" Width="100px" Height="75px" />--%>
                                  </a>
                                </td>
                           <%-- </tr>
                            <tr>--%>
                                <td>
                                   <h4><a href="<%#: GetRouteUrl("EmployeeByNameRoute", new {firstname = Item.firstname}) %>">
                                      <%#:Item.firstname + " " + Item.lastname%>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Role: </b><%#:String.Format("{0:c}", Item.role)%>
                                    </span>
                                    <br />
                                     <a href="mailto:<%#:Item.emailaddress %>"</a>              
                                        <span class="ProductListItem">
                                            <b><%#:Item.emailaddress %><b></h4> 
                                        </span>           
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
      
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
    <p>
                <a class="btn btn-default" href="EmployeeProjects.aspx">More &raquo;</a>
            </p>
    </asp:Content>