SET IDENTITY_INSERT [dbo].[StaticTextFragments] ON
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (1, 'Homepage_Welcome_Message', '<h2 class="MinMargin">Welcome to SQLServerCentral.com</h2><h3 class="MinMargin">A Microsoft SQL Server community of {NumberOfUsers} DBAs,developers and SQL Server users</h3>', 1)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (2, 'Script_Disclaimer', '<center><h1>SQLServerCentral.com  Script Library</h1></center><blockquote><small>  <u>Disclaimer</u>: SQLServerCentral.com hopes that the information in these pages is valuable to you. Your use of the information contained in these pages, however, is at your sole risk. All information on these pages is provided "as -is", without any warranty, whether express or implied, of its accuracy, completeness, fitness for a particular purpose, title or non-infringement, and none of the third-party products or information mentioned in the work are authored, recommended, supported or guaranteed by me. SQLServerCentral.com shall not be liable for any damages you may sustain by using this information, whether direct, indirect, special, incidental or consequential, even if it has been advised of the possibility of such damages.</small></blockquote>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (5, 'Login_RememberMe_Explanation', '', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (6, 'Search_Form_Header', '<form action="/search/">
<input class="SearchBox" name="q" maxlength="1000" type="text" size="34" title="Search" />&nbsp;<input class="SearchGo" type="submit" value="Go" />
</form>
<script type="text/javascript" language="javascript">
  if (/\/search\/?/i.test(window.location.pathname))
  {
    var searchBar = $(''table:has(input[name=q]):last'');
    searchBar.height(searchBar.height());
    $(''form:has(input[name=q])'').hide();
  }
  $(function() {
    $(''input[name=q]'').hint(''SearchHint'');
  });
</script>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (8, 'Meta_Tags', '<meta name="Keywords" content="Microsoft SQL Server, SQL Server, SQL Server 2000, Yukon, SQL Server 7.0, SQL Server DBA" />
<meta name="Description" content="Free Microsoft SQL Server articles, news, forums, scripts and FAQs." />
<meta name="Robots" content="NOARCHIVE" />
<meta name="GOOGLEBOT" content="NOARCHIVE" />
<META NAME="MS.LOCALE" CONTENT="en-US" />
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8" />
', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (9, 'Footer', 'Copyright &copy; 2002-{CurrentYear} Simple Talk Publishing. All Rights Reserved. <a href="http://www.sqlservercentral.com/About/Privacy/">Privacy Policy.</a> <A href="http://www.sqlservercentral.com/About/Terms">Terms of Use</a>', 1)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (10, 'Analytics', '<!-- Start of Google Analytics Code -->
<script type="text/javascript">
var protocolAndServer = ''http://www'';
if(location.href.indexOf(''https:'') > -1)
 protocolAndServer = ''https://ssl'';

document.write(''<scr'' + ''ipt '' + ''src="'' + protocolAndServer + ''.google-analytics.com/urchin.js" type="text/javascript">'' +  ''</sc'' + ''ript>'' );
</script>
    <script type="text/javascript">
        _uacct = "UA-90206-6";
        urchinTracker();
    </script>
<!-- End of Google Analytics Code -->
', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (11, 'QotD_Intro', '<p>We''d really appreciate you trying your best to get this right.</p><p>Please remember that the questions are for fun and to help you learn more about SQL Server. They are not intended as preparation for exams or certification.</p>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (13, 'Contributions_Home_Intro', 'Write content for us. Please see the <a href="/About/WriteForUs">guide to writing for www.sqlservercentral.com</a> for details on what we''re looking for.', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (14, 'Contributions_Center_Link', 'If you would like to contribute an article, script, or suggest a Question of the Day, please visit the <a href="/Contributions/Home">Contribution Center</a>.', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (15, 'Homepage_RightColumn_Advert', '<div align="right">
<iframe width="900%" height="330" src="/SqlServerCentral2/PollDaddyFrame.aspx?PollID=2118258" frameborder="0" style="margin:0px; padding:0px;"></iframe><br><br>
</div>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (16, 'Registration_Page_Above', '<!-- -->', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (17, 'Registration_Page_Below', '', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (18, 'Content_RightColumn_Advert', '<!-- -->', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (19, 'Banner_Advert', '<!-- AdSpeed.com Serving Code 7.9 for [Zone] SSCtop 468x60 -->
<script type="text/javascript">
var scheme = location.href.indexOf("https://") == 0 ? "https" : "http";
var a=new Date();var q=''&tz=''+a.getTimezoneOffset()/60 +''&ck=''+(navigator.cookieEnabled?''Y'':''N'') +''&jv=''+(navigator.javaEnabled()?''Y'':''N'') +''&scr=''+screen.width+''x''+screen.height+''x''+screen.colorDepth +''&z=''+Math.random() +''&ref=''+escape(document.referrer.substr(0,255)) +''&uri=''+escape(document.URL.substr(0,255));document.write(''<ifr''+''ame width="468" height="60" src="''+scheme+''://g.adspeed.net/ad.php?do=html&zid=15220&wd=468&ht=60&target=_blank''+q+''" frameborder="0" scrolling="no" allowtransparency="true" hspace="0" vspace="0"></ifr''+''ame>'');</script>
<noscript><iframe width="468" height="60" src="http://g.adspeed.net/ad.php?do=html&zid=15220&wd=468&ht=60&target=_blank" frameborder="0" scrolling="no" allowtransparency="true" hspace="0" vspace="0"><a href="http://g.adspeed.net/ad.php?do=clk&zid=15220&wd=468&ht=60&pair=as" target="_blank"><img style="border:0px;" src="http://g.adspeed.net/ad.php?do=img&zid=15220&wd=468&ht=60&pair=as" alt="i" width="468" height="60"/></a></iframe>
</noscript><!-- AdSpeed.com End -->', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (20, 'Total_Scores_Link', 'We keep track of your score to give you bragging rights against your peers. See the <a href="/TotalScores">Total Scores</a> page for breakdowns and comparisons of your points.', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (21, 'Member_Points_Explanation', 'Your point total is calculated as follows:
<blockquote>
<ul>
  <li>You get one point for every post to the <a href="/Forums">forums</a></li>
  <li>You get the number of points designated for each correct answer to the <a href="/Questions">Question of the Day</a>
</ul>
</blockquote>
<p>We may change this at some point in the future or add to it, but feel free to give us your feedback.</p>
', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (22, 'Skyscraper_Advert', '<a href="http://www.sqlservercentral.com/Contributions/Home" border="0"><img src="/Resources/Images/Writeforus_M1.gif"></a><br><br>

<script type="text/javascript">
<!--
var jobthread_jobroll_title = "SQL Jobs";
var jobthread_jobroll_outer_style = "background-color:#dddddd;border:1px solid #999999;width:120px;";
var jobthread_jobroll_inner_style = "background-color:#ffffff;color:#666666;border:1px solid #999999;margin-left:10px;margin-right:10px;padding:10px 10px 2px 8px;font:11px Arial, Helvetica, Sans-serif;line-height:16px;";
var jobthread_jobroll_title_style = "color:#313131;font-weight:bold;";
var jobthread_jobroll_link_style = "color:#0464bb;font-size:11px;font-weight:bold;text-decoration:none;border:none;";
var jobthread_jobroll_featured_style = "";
var jobthread_jobroll_featured_link_style = "";
var jobthread_jobroll_top_style = "padding-top:8px;";
var jobthread_jobroll_bottom_style = "padding-bottom:4px;";
//-->
</script>
<script type="text/javascript"
src="http://jobs.sqlservercentral.com/feeds/jobroll/?num_jobs=5&num_featured_jobs=1&display_method=default&attribution_style=minimal&version=2.0"></script>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (23, 'Newsletter_Archive_Intro', ' ', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (24, 'Registration_Confirmed_Message', '<p>Welcome to a community of over 900,000 SQL Server enthusiasts! Your registration is now complete, and you have full access to all of our technical articles and to our active forums where even the toughest technical questions are answered within a few hours, or more often minutes.</p>

<p>You can receive our daily SQLServerCentral newsletter, where you can start your working day with Steve Jones’s lively editorial, then catch the latest technical articles, or test your SQL Server knowledge with "Question of the Day". We also offer DatabaseWeekly, our weekly round up of all the news and gossip in the world of SQL Server.</p>

<p>SQLServerCentral is a community service from Red Gate Software, and your membership also provides full access to their wide range of high quality, free <a href="http://www.red-gate.com/products/SQL_Backup/offers/SSC_DBA_resources.htm?utm_source=ssc&utm_medium=joinemail&utm_campaign=sqlbackup">online resources, including eBooks and software trials.</a></p>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (25, 'Account_Created_Message', '<h3 class="MinMargin">Your account has been created.</h3><p>Before you can receive our regular mailings, <b>you must confirm your registration by clicking the link in the email we have sent you</b>.</p>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (26, 'Approval_Required_Message', '<h3 style="margin-top:0px;">Please verify your registration</h3><p>To read the rest of this article, we need you to verify your registration by <b>clicking the link in the email</b> we sent you.</p>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (27, 'Centre_Column_Feature_Title', 'Featured content', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (28, 'Right_Column_Feature_Title', 'From the SQLServerCentral Blogs', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (29, 'Subscriptions_Explanation', '<p>Subscribing to our newsletters gets you:</p>  <ul>  <li><b>ALL</b> of our content (thousands of articles, scripts, and forum postings)</li>  <li>A daily newsletter (<a href=''/NewsletterArchive/2007/11/19/177915'' target=''_top''>example</a>)</li>  <li>A weekly news round up (<a href=''/NewsletterArchive/2007/11/17/176955'' target=''_top''>example</a>)</li>  <li>The opportunity to ask and answer questions in our forums</li>  <li>A daily Question of the Day to test and help you increase your knowledge of SQL Server.</li>  </ul>  <p>  Steve Jones  <br/>  Editor, SQLServerCentral.com  </p>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (30, 'Registration_Required_Message', '<h3>Free registration required...</h3><p>To read the rest of this article, and access thousands of other articles, we ask you to register on the site and subscribe to our newsletters.</p>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (31, 'Bookmarking', '<div class="bookmarks"><a href="http://digg.com/submit?url={url}&title={title}&topic=Programming" title="Post to Digg"><img src="/Resources/Images/Bookmarks/digg.gif" />Digg</a><a href="http://delicious.com/post?url={url}&title={title}" title="Post to Delicious"><img src="/Resources/Images/Bookmarks/delicious.gif" />Delicious</a><a href="http://technorati.com/faves?add={url}" title="Post to Technorati"><img src="/Resources/Images/Bookmarks/technorati.gif" />Technorati</a></div>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (32, 'RSS_Advert_1', '<!-- NEW! Object recovery for SQL Server -->
<table border="0" cellpadding="0" cellspacing="10" width="100%">
 <colgroup>
  <col width="68" />
  <col width="1266" />
 </colgroup>
 <tr align="left" valign="top">
  <td><a href="http://www.red-gate.com/products/SQL_OLR_Native/offers/try_olr_native.htm?utm_source=ssc&utm_medium=rss&utm_content=OlrNative_launch_200909&utm_campaign=sqlolrnative"><img alt="SQL OLR Native" height="68" src="http://www.red-gate.com/images/sql_server_central/olr_native_68x68.gif" width="68" border="0"/></a></td>
  <td><strong>NEW! Object recovery for SQL Server </strong><br />Recover individual database objects from native SQL Server<br> backups and restore them to any database. <a href="http://www.red-gate.com/products/SQL_OLR_Native/offers/try_olr_native.htm?utm_source=ssc&utm_medium=rss&utm_content=OlrNative_launch_200909&utm_campaign=sqlolrnative">Download a free trial </a><br>of Red Gate’s new SQL Object Level Recovery Native™.<img src="/Images/spacer.gif?d=ad_olr1"/></td>
 </tr>
</table>
', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (33, 'RSS_Advert_2', '<!-- Exceptional DBA -->
<table border="0" cellpadding="0" cellspacing="10" width="100%">
 <colgroup>
  <col width="68" />
  <col width="1266" />
 </colgroup>
 <tr align="left" valign="top">
  <td><a href="http://www.red-gate.com/products/SQL_Backup/offers/backup_how_to_become_exceptional_dba.htm?utm_source=ssc&utm_medium=rss&utm_content=BackupAndBook200909&utm_campaign=sqlbackup"><img alt="ExceptionalDBA" height="68" src="http://www.red-gate.com/images/marketing/SSC/EXDBA_V2_68px.gif" width="68" border=”0”/></a></td>
  <td><strong>Free “How to Become an Exceptional DBA (2nd ed.)” eBook</strong><br /><a href="http://www.red-gate.com/products/SQL_Backup/offers/backup_how_to_become_exceptional_dba.htm?utm_source=ssc&utm_medium=rss&utm_content=BackupAndBook200909&utm_campaign=sqlbackup">Download your copy</a> and a free trial of Red Gate SQL Backup for<br>
 robust SQL Server database backups.<br /><img src="/Images/spacer.gif?d=ad_bkup2" /></td>
 </tr>
</table>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (34, 'RSS_Advert_3', '<!-- NEW product just released! -->
<table border="0" cellpadding="0" cellspacing="10" width="100%">
 <colgroup>
  <col width="68" />
  <col width="1266" />
 </colgroup>
 <tr align="left" valign="top">
  <td><a href="http://www.red-gate.com/products/SQL_OLR_Native/offers/try_olr_native.htm?utm_source=ssc&utm_medium=rss&utm_content=OlrNative_launch_v2_200909&utm_campaign=sqlolrnative"><img alt="SQL OLR Native" height="68" src="http://www.red-gate.com/images/sql_server_central/olr_native_68x68.gif" width="68" border="0"/></a></td>
  <td><strong>New product just released! </strong><br />Recover individual database objects from native SQL Server<br> backups and restore them to any database. <a href="http://www.red-gate.com/products/SQL_OLR_Native/offers/try_olr_native.htm?utm_source=ssc&utm_medium=rss&utm_content=OlrNative_launch_v2_200909&utm_campaign=sqlolrnative">Download a free trial </a><br>of Red Gate’s new SQL Object Level Recovery Native™.<img src="/Images/spacer.gif?d=ad_olr1"/></td>
 </tr>
</table>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (35, 'RSS_Advert_4', '<!-- Free “SQL Server Tacklebox” eBook -->
<table border="0" cellpadding="0" cellspacing="10" width="100%">
 <colgroup>
  <col width="68" />
  <col width="1266" />
 </colgroup>
 <tr align="left" valign="top">
  <td><a href="http://www.red-gate.com/products/sql_response/offers/response_tacklebox.htm?utm_source=ssc&utm_medium=rss&utm_content=ResponseAndBook200909&utm_campaign=sqlresponse "><img alt="SQL Server Tacklebox" height="68" src="http://www.red-gate.com/images/marketing/SSC/SQL_Server_Tacklebox_60px.gif" width="68" border=”0”/></a></td>
  <td><strong>Free “SQL Server Tacklebox” eBook</strong><br />
    <a href="http://www.red-gate.com/products/sql_response/offers/response_tacklebox.htm?utm_source=ssc&utm_medium=rss&utm_content=ResponseAndBook200909&utm_campaign=sqlresponse">Download the eBook</a> for expert advice on tackling<br>
SQL Server issues and try out SQL Response<br>
to be alerted to problems on your SQL Servers.<br>
<img src="/Images/spacer.gif?d=ad_resp1" /></td>
 </tr>
</table>', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (36, 'RSS_Advert_5', '', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (37, 'RSS_Advert_6', '', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (38, 'RSS_Advert_7', '', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (39, 'RSS_Advert_8', '', 0)
INSERT INTO [dbo].[StaticTextFragments] ([StaticTextFragmentID], [KeyText], [StaticText], [ContainsTokens]) VALUES (40, 'Front_Page_Title', 'SQL Server Central. Microsoft SQL Server tutorials, training & forum.', 0)
SET IDENTITY_INSERT [dbo].[StaticTextFragments] OFF
