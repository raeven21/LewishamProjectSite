<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectList.aspx.cs" Inherits="LewishamProjectSite.ProjectList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
                <div id="ProjectJmbo">
                <p class="text-center">Team Projects</p>
                    </div>
    <br />
    <div class="text-center">
    <h2> Ongoing Project</h2>
    <br />
    <h4>These are all of the ongoing project within the digital transformation team</h4>
    </div>

            <asp:ListView ID="projecttList" runat="server" 
                DataKeyNames="ProjectID" GroupItemCount="3"
                ItemType="LewishamProjectSite.project" SelectMethod="GetProjects" >
                <EmptyDataTemplate>
                    <table>
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
                        <table style="align-self:center">
                            <tr>
                                <td>
                                  <a href="<%#: GetRouteUrl("ProjectByNameRoute", new {project1 = Item.project1}) %>">
                                    <%--<image src='/Catalog/Images/Thumbs/<%#:Item.ImagePath%>'--%>
                                     <%-- width="100" height="75" border="1" />--%>
                                  </a>
                                </td>
                            </tr>
                            </td>
                    <tr>
                               
                    <td>
                        <asp:Image runat="server" ID="image2" ImageUrl="~/Images/project-icon.png" Width="100px" Height="75px" />
                        
                    </td>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: central; text-align:left;">
                                <td>
                                    <a href="<%#: GetRouteUrl("ProjectByNameRoute", new {project1 = Item.project1}) %>">
                                      <%#:Item.project1%>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Deadline: </b><%#:Item.deadline%>
                                    </span>
                                    <br />
                                    <%--<a href="/employeeDetails.aspx=<%#:Item.workCapacity %>">               
                                        <span>
                                            <b>Capacity<b>
                                        </span>           
                                    </a>--%>
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
              
</asp:Content>