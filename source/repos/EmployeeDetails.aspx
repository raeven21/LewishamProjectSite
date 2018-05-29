<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="LewishamProjectSite.EmployeeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="employeedetails" runat="server" ItemType="LewishamProjectSite.employee" SelectMethod="GetEmployee" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1> <%#:Item.firstname + " " + Item.lastname%></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Image runat="server" ID="image3"  ImageUrl="~/Images/user-icon-png-transparent-17.jpg" BorderStyle="Solid" Height="300PX" /> 
                       <%-- <img src="Images/grab-vector-graphic-person-icon-imagebasket-13.png" style="border:solid; height:300px" />--%>
                    </td>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left;">
                        <b>Description:</b><br /><%#:Item.manager %>
                        <br />
                        <span><b>Role:</b>&nbsp;<%#: String.Format("{0:c}", Item.role) %></span>
                        <br />
                        <span><b>Email Address:</b>&nbsp;<%#:Item.emailaddress %></span>
                        <br />
                        <br />
                        <br />
                       
                    
                    </td>
                    

                </tr>
            </table>
     </ItemTemplate>
    </asp:FormView>
    </asp:Content>