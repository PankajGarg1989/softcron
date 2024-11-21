using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class blogs_details : System.Web.UI.Page
    {
        #region

        string imageUrl = ConfigurationManager.AppSettings["webapibaseimgurl"].ToString();
        string blogBaseURL = ConfigurationManager.AppSettings["BlogBaseURL"].ToString();

        SqlConnection _sqlConnection, _sqlConnection2 = new SqlConnection();
        SqlCommand _sqlCommand, _sqlCommand2, _sqlCommand3 = new SqlCommand();



        SqlDataAdapter _sqlDataAdapter, _sqlDataAdapter2 = null;

        DataTable _datatable, _datatable_lstUserRole = null;

        #endregion


        protected void Page_Load(object sender, EventArgs e)
        {
            Literal myTitleLiteral = (Literal)Master.FindControl("pagetitle");


            //  Page.MaintainScrollPositionOnPostBack = true;
            if (!IsPostBack)
            {
                if (RouteData.Values["name"] != null)
                {
                    string qid = RouteData.Values["name"].ToString();
                    string name = qid;
                    //myTitleLiteral.Text = name.Replace("-", " ") + " - Softcron Technologies";
                    //lblblogname.Text = name.Replace("-", " ");
                    //lblscroll.Text = name.Replace("-", " ");

                    BindBlog(name);
                    Populate_Title_MetaIndex(name);
                    BindBlogComments(HdnfBlogMasterIdForComment.Value);
                }
                else
                {
                    //Remove After Bind With Routing
                    //string name=string.Empty;
                    //BindBlog(name);
                    //Populate_Title_MetaIndex(name);
                }
                BindSubBlog();
                BindCategory();
                BindAlltag();
                BindBlogtags();

            }
        }

        protected void rptrBlogCategory_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {

                    // LinkButton lnkExplore = (LinkButton)e.Item.FindControl("lnkExplore");
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "errorToast();", true);
            }
        }

        protected void rptrTag_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {

                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "errorToast();", true);
            }
        }

        protected void rptrTag_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string commandname = e.CommandName;
            string id = e.CommandArgument.ToString();
            string[] stringArray = id.ToString().Split(',');
            switch (commandname)
            {
                case "view":
                    try
                    {
                        string tag_name = stringArray[1];

                        string _tag_url = string.Empty;
                        if (!string.IsNullOrEmpty(tag_name))
                        {
                            string _friendlyUrl = null;

                            string lasttm = tag_name.TrimEnd(' ');
                            string[] arrOfSelections = lasttm.Split(' ');
                            for (int i = 0; i < arrOfSelections.Length; i++)
                            {
                                string _subStringFriendlyUrl = arrOfSelections[i] + "-";
                                //insert command
                                _friendlyUrl = _friendlyUrl + _subStringFriendlyUrl;
                            }

                            if (!string.IsNullOrEmpty(_friendlyUrl))
                            {
                                string _final_friendly_url = _friendlyUrl.TrimEnd('-');
                                _tag_url = _final_friendly_url;
                            }

                            string url = "/softcronblogs/" + _tag_url;
                            Response.Redirect(url, false);
                        }
                        else
                        {

                        }
                        //id = "/softcronblogs/" + id;
                        //Response.Redirect(id, false);
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

        protected void rptrBlogCategory_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string commandname = e.CommandName;
            string id = e.CommandArgument.ToString();
            hdnBlogCategoryId.Value = id;
            string[] stringArray = hdnBlogCategoryId.Value.ToString().Split(',');
            switch (commandname)
            {
                case "view":
                    try
                    {
                        string name = stringArray[1];
                        string _category_url = string.Empty;
                        if (!string.IsNullOrEmpty(name))
                        {
                            string _friendlyUrl = null;

                            string lasttm = name.TrimEnd(' ');
                            string[] arrOfSelections = lasttm.Split(' ');
                            for (int i = 0; i < arrOfSelections.Length; i++)
                            {
                                string _subStringFriendlyUrl = arrOfSelections[i] + "-";
                                //insert command
                                _friendlyUrl = _friendlyUrl + _subStringFriendlyUrl;
                            }

                            if (!string.IsNullOrEmpty(_friendlyUrl))
                            {
                                string _final_friendly_url = _friendlyUrl.TrimEnd('-');
                                _category_url = _final_friendly_url;
                            }

                            string url = "/blogs/" + _category_url;
                            Response.Redirect(url, false);
                        }
                        else
                        {

                        }

                        //string name = stringArray[1];
                        //string url = "/blogs/" + stringArray[0];
                        //Response.Redirect(url, false);
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

        protected void rptrblogTag_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }

        protected void rptrblogTag_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void rptrsubblog_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {

                    Label lblblogheading = e.Item.FindControl("lblblogheading") as Label;

                    Label lblpic = (Label)e.Item.FindControl("lblpic");
                    Image imagethumbPreview = (Image)e.Item.FindControl("imagethumbPreview");
                    string url;

                    if (string.IsNullOrEmpty(lblpic.Text))
                    {
                        // url = "../assets/img/d-agency/blog/rec1.jpg";
                        url = "";
                    }
                    else
                    {
                        url = imageUrl + blogBaseURL + lblpic.Text;
                    }
                    imagethumbPreview.ImageUrl = url;

                    string heading = lblblogheading.Text;
                    //string alt = lblblogheading.Text.Replace(" ","-");

                    if (heading.Length > 50)
                    {
                        lblblogheading.Text = heading.Substring(0, 50);
                    }
                    else
                    {
                        lblblogheading.Text = heading;
                    }
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "errorToast();", true);
            }
        }

        protected void rptrsubblog_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string commandname = e.CommandName;
            string id = e.CommandArgument.ToString();

            switch (commandname)
            {
                case "view":
                    try
                    {

                        id = "/blogs/" + id;
                        Response.Redirect(id, false);
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

        protected void rptrBlogComments_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }

        protected void rptrBlogComments_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        /// <summary>
        /// This Method is Used to Get All Blog Category List 
        /// </summary>
        private void BindCategory()
        {
            try
            {

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand("sp_Selectblogcategory", _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
                        _sqlCommand.CommandType = CommandType.StoredProcedure;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        _datatable_lstUserRole = new DataTable();
                        _sqlDataAdapter.Fill(_datatable_lstUserRole);
                        if (_datatable_lstUserRole.Rows.Count > 0)
                        {
                            Session["CategoryList"] = _datatable_lstUserRole;
                            rptrBlogCategory.DataSource = _datatable_lstUserRole;
                            rptrBlogCategory.DataBind();

                        }
                        else
                        {
                            rptrBlogCategory.DataSource = null;
                            rptrBlogCategory.DataBind();
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

        protected void rptrBlogDetail_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void rptrBlogDetail_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {

                    Label lblpic = (Label)e.Item.FindControl("lblpic");
                    Image lblimageurl = (Image)e.Item.FindControl("lblimageurl");
                    string url;

                    if (string.IsNullOrEmpty(lblpic.Text))
                    {
                        // url = "../assets/img/d-agency/blog/news-9.jpg";
                        url = "";
                    }
                    else
                    {
                        url = imageUrl + blogBaseURL + lblpic.Text;
                    }
                    lblimageurl.ImageUrl = url;
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "errorToast();", true);
            }
        }


        /// <summary>
        /// This Method is Used to Get All Sub Blog List 
        /// </summary>
        private void BindSubBlog()
        {
            try
            {

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "SELECT top 5 * FROM BlogMaster where is_active=1";
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        _datatable_lstUserRole = new DataTable();
                        _sqlDataAdapter.Fill(_datatable_lstUserRole);
                        if (_datatable_lstUserRole.Rows.Count > 0)
                        {
                            Session["recentlist"] = _datatable_lstUserRole;
                            rptrsubblog.DataSource = _datatable_lstUserRole;
                            rptrsubblog.DataBind();

                        }
                        else
                        {
                            rptrsubblog.DataSource = null;
                            rptrsubblog.DataBind();
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


        /// <summary>
        /// This Method is Used to Get All Tag List 
        /// </summary>
        private void BindAlltag()
        {
            try
            {

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "SELECT * FROM blogcategory where is_active=1 and category_type='tag' ";
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        _datatable_lstUserRole = new DataTable();
                        _sqlDataAdapter.Fill(_datatable_lstUserRole);
                        if (_datatable_lstUserRole.Rows.Count > 0)
                        {
                            Session["tagList"] = _datatable_lstUserRole;
                            rptrTag.DataSource = _datatable_lstUserRole;
                            rptrTag.DataBind();

                        }
                        else
                        {
                            rptrTag.DataSource = null;
                            rptrTag.DataBind();
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

        /// <summary>
        /// This Method is Used to Get All Blog-Tag List 
        /// </summary>
        private void BindBlogtags()
        {
            try
            {
                if (!string.IsNullOrEmpty(hdnFBlogTagId.Value))
                {
                    string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                    using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                    {
                        string _query = "SELECT * FROM blogcategory where is_active=1 and category_type='tag' and blog_category_id in (" + hdnFBlogTagId.Value.ToString() + ")";
                        _sqlConnection.Open();
                        using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                        {

                            _sqlCommand.CommandTimeout = 600;
                            _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                            _datatable_lstUserRole = new DataTable();
                            _sqlDataAdapter.Fill(_datatable_lstUserRole);
                            if (_datatable_lstUserRole.Rows.Count > 0)
                            {
                                Session["blogtag"] = _datatable_lstUserRole;
                                rptrblogTag.DataSource = _datatable_lstUserRole;
                                rptrblogTag.DataBind();

                            }
                            else
                            {
                                rptrblogTag.DataSource = null;
                                rptrblogTag.DataBind();
                            }

                            _sqlConnection.Close();
                        }
                    }
                }
                else
                {

                }



            }
            catch (Exception ex)
            {
                string error = ex.ToString();
                _sqlConnection.Close();
            }
        }

        /// <summary>
        /// This Method is Used to Get All UserRole List 
        /// </summary>
        private void BindBlog(string _blog_link)
        {
            try
            {
                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "select top 5 * from BlogMaster where is_active=1 and blog_friendly_url ='" + _blog_link + "'";
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        _datatable_lstUserRole = new DataTable();
                        _sqlDataAdapter.Fill(_datatable_lstUserRole);
                        if (_datatable_lstUserRole.Rows.Count > 0)
                        {
                            Session["blogDetail"] = _datatable_lstUserRole;
                            hdnFBlogTagId.Value = _datatable_lstUserRole.Rows[0]["blog_tag_id"].ToString();
                            HdnfBlogMasterIdForComment.Value = _datatable_lstUserRole.Rows[0]["blog_master_id"].ToString();
                            rptrBlogDetail.DataSource = _datatable_lstUserRole;
                            rptrBlogDetail.DataBind();

                        }
                        else
                        {
                            rptrBlogDetail.DataSource = null;
                            rptrBlogDetail.DataBind();
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


        /// <summary>
        /// This Method is Used to Get All Blog Comments List 
        /// </summary>
        private void BindBlogComments(string _blog_master_id)
        {
            try
            {
                //_blog_master_id = "1";

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "select * from CommentMaster where is_active=1 and blog_master_id ='" + _blog_master_id + "'";
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        _datatable_lstUserRole = new DataTable();
                        _sqlDataAdapter.Fill(_datatable_lstUserRole);
                        if (_datatable_lstUserRole.Rows.Count > 0)
                        {
                            Session["blogcommentlist"] = _datatable_lstUserRole;
                            lblCommentTotal.Text = _datatable_lstUserRole.Rows.Count.ToString();
                            rptrBlogComments.DataSource = _datatable_lstUserRole;
                            rptrBlogComments.DataBind();

                        }
                        else
                        {
                            lblCommentTotal.Text = "0";
                            rptrBlogComments.DataSource = null;
                            rptrBlogComments.DataBind();
                        }

                        _sqlConnection.Close();
                    }
                }

            }
            catch (Exception ex)
            {
                string error = ex.ToString();
                _sqlConnection.Close();
                lblCommentTotal.Text = "0";
            }
        }


        /// <summary>
        /// This Method is Used to Bind Title and Meta Tags 
        /// </summary>
        private void Populate_Title_MetaIndex(string _blog_link)
        {
            try
            {

                Int64 id = 0;
                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "select * from BlogMaster where is_active=1 and blog_friendly_url ='" + _blog_link + "'";
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        _datatable_lstUserRole = new DataTable();
                        _sqlDataAdapter.Fill(_datatable_lstUserRole);
                        if (_datatable_lstUserRole.Rows.Count == 0)
                        {
                            id = 0;

                        }
                        else
                        {
                            foreach (DataRow dr in _datatable_lstUserRole.Rows)
                            {


                                string pageTitle = Convert.ToString(dr["blog_title"]);
                                string keyword = Convert.ToString(dr["meta_key"]);
                                string metadescription = Convert.ToString(dr["meta_description"]);
                                id = Convert.ToInt64(dr["blog_master_id"]);

                                //Add Keywords Meta Tag.
                                HtmlMeta keywords = new HtmlMeta();
                                keywords.HttpEquiv = "keywords";
                                keywords.Name = "keywords";
                                keywords.Content = keyword;
                                this.Page.Header.Controls.Add(keywords);

                                //Add Description Meta Tag.
                                HtmlMeta description = new HtmlMeta();
                                description.HttpEquiv = "description";
                                description.Name = "description";
                                description.Content = metadescription;
                                this.Page.Header.Controls.Add(description);

                                //Add Title
                                Literal myTitleLiteral = (Literal)Master.FindControl("pagetitle");

                                if (pageTitle == null)
                                {
                                    myTitleLiteral.Text = "Blog - Softcron Technologies";
                                }
                                else
                                {

                                }
                            }
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
    }
}