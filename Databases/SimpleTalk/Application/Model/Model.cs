using System.Data;
//using System.Data.SqlClient;
using System.Data.Common;

namespace SimpleTalk.Model
{
    public class Model
    {
        readonly DbConnection m_connection;
        DbProviderFactory factory;
        public Model(string connectionString)
        {
            factory = DbProviderFactories.GetFactory("System.Data.SqlClient");
            m_connection = factory.CreateConnection();
            m_connection.ConnectionString = connectionString;
            
        }

        public DataTable Articles
        {
            get
            {
                DataTable table = new DataTable();

                using (DbCommand command = m_connection.CreateCommand())
                {

                    command.CommandText = "SELECT  * from v_Articles ORDER BY PublishDate DESC";

                    DbDataAdapter adaptor = factory.CreateDataAdapter();
                    adaptor.SelectCommand = command;
                    adaptor.Fill(table);
                }
                return table;
            }
        }

        public DataTable RSSFeeds
        {
            get
            {
                DataTable table = new DataTable();


                using (DbCommand command = m_connection.CreateCommand())
                {
                    command.CommandText = "SELECT FeedName, Checked FROM  RSSFeeds";

                    DbDataAdapter adaptor = factory.CreateDataAdapter();
                    adaptor.SelectCommand = command;
                    adaptor.Fill(table);
                }
                return table;
            }
        }
    }
}
