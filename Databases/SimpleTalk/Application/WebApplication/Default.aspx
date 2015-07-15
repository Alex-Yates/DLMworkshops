<%@ Page Title="Simple Talk: SQL Server and .Net articles, forums and blogs" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SimpleTalk.WebApplication._Default" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="SimpleTalk.Model" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<%  Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
    Model model = new Model(rootWebConfig.ConnectionStrings.ConnectionStrings["SimpleTalkConnection"].ConnectionString);
    DataTable articles = model.Articles;
    DataTable rssfeeds = model.RSSFeeds;
%>

<div class="column1">
    <h1>
        Latest Content
    </h1>




        <%foreach (DataRow row in articles.Rows)
        {%>
                

        <table style="padding:0 0 0 0;">
            <tr> 
            <td>
                <table>
                <tr>
                <td style="padding-top:0px;">
                <a href=<%=row["URL"]%>><h2><%=row["Title"]%></h2></a>
                </td>
                </tr>
                <tr>
                <td style="border-bottom: 1px solid #EEEEEE;">
                     <p style="line-height:1em; margin-top:0px;">by <%=row["ContactFullName"]%>,  <% DateTime time = Convert.ToDateTime(row["PublishDate"]); Response.Write(time.ToString("dd MMMM yyyy"));%>&nbsp;&nbsp;|&nbsp; <%=row["Comments"] %> comments&nbsp;&nbsp;|&nbsp; about <%=row["ReadingTime"] %> minutes to read</p>
                </td>
                </tr>
                <tr>    
                <td>
                <p><%=row["Description"]%> <a href=<%=row["URL"]%>> Read more...</a></p></td>  
                </tr>
                </td>
                </table>
            <td >
            <img class="author-image" src="Images/<%=row["ContactFullName"]%>.jpg" onerror="this.src='Images/Default.jpg';"></img>
                </td>
            </tr>
          </table>
    

               
        <%}%>
     


</div>

<div class="column2">
  <h2>Custom RSS feeds</h2>
        <table>
        <tr>
        <%foreach (DataColumn col in rssfeeds.Columns)
        {%>
        <%}%>
        </tr>

        <tr><td>
        <%foreach (DataRow row in rssfeeds.Rows)
        {%>
                
                        
                        <input type="checkbox" name="rss" id="Checkbox1" value="2" checked="checked" /><label for="sqlFeed"><%=row["FeedName"]%></label><br />
       
        <%}%>
            
      <p>
      </div><a class="btn" href="https://www.simple-talk.com/rss.aspx" onclick="RssGetSide(false); return(false);" >Get my feed</a>
      </p>
         <p> If you update your feed, please remember to tell your RSS reader the new URL </p> 
        <a id="A1" href="https://www.simple-talk.com/rsssel.aspx" onclick="RssGetSide(true); return(false);">Click here for <b>advanced</b> RSS options</a>
        </td></tr>
    </table>
</div>

<div class="column2">
<h2>Free Stuff</h2>

    
        <p><a href="https://www.simple-talk.com/books/sql-books/simple-talk-newsletter/" >Simple Talk Newsletter</a></p>
      
        <p><a href="https://www.simple-talk.com/books/.net-books/under-the-hood-of-.net-memory-management/">Under the Hood of .NET Memory Management</a></p>
      
        <p><a href="https://www.simple-talk.com/books/sql-books/sql-backup-and-restore/" >SQL Backup and Restore</a></p>
      
        <p><a href="https://www.simple-talk.com/books/sql-books/sql-server-hardware/" >SQL Server Hardware</a></p>
      
        <p><a href="https://www.simple-talk.com/books/sql-books/the-red-gate-guide-to-sql-server-team-based-development/" >The Red Gate Guide to SQL Server Team-based...</a></p>
      

</div>
</div>

<div class="column2">

  
      <h2>Why Join</h2>

	      <p>
	        Over 400,000 Microsoft professionals subscribe to the Simple-Talk technical journal. Join today, it's fast, simple, free and secure.
	      </p>
		   
		      <a class="btn" href="https://www.simple-talk.com/community/user/CreateUser.aspx?ReturnUrl=%2fdefault.aspx">
            Join Simple-Talk!
          </a>


    


</div>


<div class="pagefooter nav">
  <div class="red-gate-logo">
	  <a href="http://www.red-gate.com/?utm_source=simpletalk&amp;utm_medium=textad&amp;utm_campaign=homepage">
	  	<img alt="Red Gate" style="border:none;"  src="red-gate-logo-footer.png">
	  </a>
  </div>
  <ul class="footer-nav">
    <li>
      <a href="https://www.simple-talk.com/about.aspx" >About</a>
    </li>
    <li>
      <a href="https://www.simple-talk.com/site-map.aspx">Site map</a>
    </li>
    <li>
      <a href="https://www.simple-talk.com/become-an-author.aspx">Become an author</a>
    </li>
    <li>
      <a href="https://www.simple-talk.com/newsletter-archive/" >Newsletters</a>
    </li>
    <li>
      <a href="https://www.simple-talk.com/contact-us.aspx" >Contact us</a>
    </li>
    <li>
      <a href="https://www.simple-talk.com/community/languages/en-US/docs/faq.aspx">Help</a>
    </li>
  </ul>
    </br>
  <ul class="footer-legal-nav">
    <li>
      <a href="https://www.simple-talk.com/privacy-policy.aspx" >Privacy policy</a>
    </li>
    <li>
      <a href="https://www.simple-talk.com/terms-and-conditions.aspx">Terms and conditions</a>
    </li>
    <li>
      <a target="_blank" href="http://www.red-gate.com/">&copy;2005-2013 Red Gate Software</a>
    </li>
  </ul>
</div>
</asp:Content>
