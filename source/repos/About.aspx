<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="LewishamProjectSite.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="JmbAbout">
        <div class="text-center">
 <p>ABOUT US</p>
    </div>          
</div>
   <div class="text-center">
      <h2>About Our Team</h2>
       <br />
       <br />
     <h4 class="text-center">
Hi, I’m Raeven Cowell and this is a website I created for the Digital Transformation team within Lewisham Council. I created this because during our first away day there was a huge decision about the poor and lack of communication within the team regarding who working on what. Our team was slowly growing at the time and many of the new and currently employees were not fully aware of what was going on within the team and what each other were working on.
<br />
<br />
This website is my best attempt at trying resolve that issue, this webpage allows the team to be able to see what each other are working on, all of the ongoing projects within the team and all of the current team members. 
Hopefully this will be of use 
<br />
           <br />
          </h4>

       <br />
<h2>FAQs</h2><br />
<h4>
Why did you create this website?<br />
To improve communication within the team and inform every one of the ongoing projects with the team.<br /><br />
How do I use it?<br />
Like any other website.</h4>
       </div>
    <br />  
    <br />
  <div class="text-center">
    <h2>Location</h2>
    <br />
    <h4>We're located at the London Borough of Lewisham, Laurence House, Catford, SE6 4RD.</h4>
 
   
     <embed property="og:image" width="500" height="400" style="margin-left:auto; margin-right:auto;" src="https://www.bing.com/maps/embed?h=400&w=500&cp=51.4456093533597~-0.019338938371074032&lvl=15&typ=d&sty=r&src=SHELL&FORM=MBEDV8" />
     <div style="white-space: nowrap; text-align: center; width: 500px; padding: 6px 0;">
         <div class="text-center" style="margin-left:auto; margin-right:auto;">
        <a id="largeMapLink" style="margin-left:auto; margin-right:auto;" href="https://www.bing.com/maps?cp=51.4456093533597~-0.019338938371074032&amp;sty=r&amp;lvl=15&amp;FORM=MBEDLD" target="_blank">View Larger Map</a> &nbsp; | &nbsp;
        <a id="dirMapLink" style="margin-left:auto; margin-right:auto;" href="https://www.bing.com/maps/directions?cp=51.4456093533597~-0.019338938371074032&amp;sty=r&amp;lvl=15&amp;rtp=~pos.51.4456093533597_-0.019338938371074032____&amp;FORM=MBEDLD" target="_blank">Get Directions</a>
    </div>
         </div>
    <br />
    <br />
    <div>
        </div>
  <asp:Table runat="server" HorizontalAlign="Center">
      <asp:TableRow>
          <asp:TableCell>
  <img src="Images/paperless%20awards%20logo.png" width="150"/>
          </asp:TableCell>
              </asp:TableRow>  
          </asp:Table>
    </div>
</asp:Content>
