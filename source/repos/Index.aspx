<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/LoginPage.Master" CodeBehind="Index.aspx.cs" Inherits="LewishamProjectSite.Index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">
    

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
        
        
    <div class="HPcenter">
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="41px" Width="297px"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"  Height="43px" Width="297px">Password</asp:TextBox>
        <br />

    <asp:Button ID="LoginBtn" runat="server" Text="Log In" Height="45px" Width="305px" OnClick="Button1_Click" />
        <br />
        
    <br />
        <asp:Label ID="Label1" runat="server" Text="" Height="31px" Width="300px" style="margin-left: 500px"></asp:Label>
  </div>
             
       
        
    
</asp:Content>
