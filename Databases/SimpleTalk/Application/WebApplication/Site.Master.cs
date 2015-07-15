using System;
using System.Configuration;

namespace SimpleTalk.WebApplication
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = ConfigurationManager.AppSettings["EnvironmentName"];
        }
    }
}
