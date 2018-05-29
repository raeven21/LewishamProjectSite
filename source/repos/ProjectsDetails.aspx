<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectsDetails.aspx.cs" Inherits="LewishamProjectSite.ProjectsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="projectdetails" runat="server" ItemType="LewishamProjectSite.project" SelectMethod="GetProject" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.project1 %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Image runat="server" ID="image2" ImageUrl="~/Images/project-icon.png" Height="300px" BorderStyle="Solid" />
                        <%--<img src="Images/paperless%20pic.png" style="height:300px", border:"solid;" />--%>
                    </td>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left;">
                        <b>Description:</b><br />Lewisham Council in 2018:
The Council is focussed on the needs of our customers and brings out the best in our people. 
We make the most of technology to streamline processes, help us understand our customers better, collaborate and work in a more agile way. Our offices are modern and a pleasant place to work, encouraging innovation and teamwork. We are able to adapt to change and constantly improve. 
<br /><br />
There are four key aspects of Smarter Working:<br /> 
<ul>
<li>New Technology</li> 
<li>Smarter Services</li> 
<li>Paperless Office</li>
<li>Better Office Space</li>
    </ul>                   
                        <br />
                        <%--<span><b>Role:</b>&nbsp;<%#: Item.deadline %></span>--%>
                        <br />
                        <span><b>Deadline:</b>&nbsp;<%#:Item.deadline %></span>
                        <br />
                        <br />
                        <a class="btn btn-default" runat="server" href="ProjectList.aspx">Back </a>
                    </td> 
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
    </asp:Content>
