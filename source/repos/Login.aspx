<%@ Page Language="C#" MasterPageFile="~/LoginPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LewishamProjectSite.Login" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
    <div class="text-center">
 
   <div style="max-width:300px; margin-left:auto; margin-right:auto; margin-top:auto; margin-bottom:auto;" >
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
            <LayoutTemplate>
                <asp:Table CssClass="LoginTable" runat="server" CellSpacing="20" Font-Size="X-Large" HorizontalAlign="Center">
                   <asp:TableRow>
                       <asp:TableCell>
                           <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Lewisham_logo.png" Height="70px" Width="75px" />
                       </asp:TableCell>
                       </asp:TableRow>
                    <asp:TableRow runat="server">
                       <asp:TableCell><asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" >User Name:</asp:Label></asp:TableCell>
                           <asp:TableCell>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                   </asp:TableCell> 
                        </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell><asp:TextBox ID="UserName" runat="server" ></asp:TextBox></asp:TableCell>
                       </asp:TableRow>
                                    <asp:TableRow>      
                                        <asp:TableCell>
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </asp:TableCell>
                                        </asp:TableRow>
                    <asp:TableRow>                                        <asp:TableCell>
                                        <asp:TextBox ID="Password" runat="server" OnTextChanged="Password_TextChanged" TextMode="Password" ></asp:TextBox>
                                    </asp:TableCell>
                                  </asp:TableRow>                                
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:CheckBox ID="RememberMe" runat="server" OnCheckedChanged="RememberMe_CheckedChanged" Text="Remember me next time." />
                                    </asp:TableCell>
                                        </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False" ></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                 <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:Button ID="LoginButton" runat="server" CssClass="btn btn-primary btn-lg" CommandName="Login" Text="Log In" ValidationGroup="Login1"  />
                                    </asp:TableCell>
                                </asp:TableRow>
             </asp:Table>
            </LayoutTemplate>
        </asp:Login>
       </div>
       <br />
        <br />
    <asp:ValidationSummary Font-Size="20px" CssClass="text-center" ForeColor="Red" ID="ValidationSummary1" runat="server" ValidationGroup="Login1" />
   </div>
        <p>

    </p>
        
        
       
    
</asp:Content>



















