using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class _default : System.Web.UI.Page
    {
        #region
        string imageUrl = ConfigurationManager.AppSettings["webapibaseimgurl"].ToString();
        string blogBaseURL = ConfigurationManager.AppSettings["BlogBaseURL"].ToString();

        SqlConnection _sqlConnection = new SqlConnection();
        SqlCommand _sqlCommand = new SqlCommand();
        SqlDataAdapter _sqlDataAdapter;
        DataTable dt_blog = null;

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            BindBlog();
        }
        private void BindBlog()
        {
            try
            {
                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand("j" +
                        "" +
                        "", _sqlConnection))
                    {
                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        dt_blog = new DataTable();
                        _sqlDataAdapter.Fill(dt_blog);
                        if (dt_blog.Rows.Count > 0)
                        {
                            Session["bloglist"] = dt_blog;
                            rptrblog.DataSource = dt_blog;
                            rptrblog.DataBind();
                        }
                        else
                        {
                            rptrblog.DataSource = null;
                            rptrblog.DataBind();
                        }
                        _sqlConnection.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                string error = ex.ToString();
                _sqlConnection.Close();
            }
        }

        protected void rptrblog_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string commandname = e.CommandName;
            string url = e.CommandArgument.ToString();

            switch (commandname)
            {
                case "view":
                    try
                    {
                        url = "/blogs/" + url;
                        Response.Redirect(url, false);
                        //PopulateOrder(id);
                        //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "showModal();", true);
                    }
                    catch (Exception ex)
                    {
                        ex.Message.ToString();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "oopsToast();", true);
                    }
                    break;
                default:
                    break;
            }
        }

        protected void rptrblog_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {

                    Label lblpic = (Label)e.Item.FindControl("lblpic");
                    Image lblimageurl = (Image)e.Item.FindControl("lblimageurl");
                    Image Image1 = (Image)e.Item.FindControl("Image1");
                    string url;
                    if (string.IsNullOrEmpty(lblpic.Text))
                    {
                        url = "";
                    }
                    else
                    {
                        url = imageUrl + blogBaseURL + lblpic.Text;
                       // url = lblpic.Text;
                    }
                    lblimageurl.ImageUrl = url;
                    Image1.ImageUrl = url;
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "errorToast();", true);
            }
        }
    }
}
