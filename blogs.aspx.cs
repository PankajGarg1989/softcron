using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class blogs : System.Web.UI.Page
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
            //Literal myTitleLiteral = (Literal)Master.FindControl("pagetitle");
            //myTitleLiteral.Text = "Latest technologies blogs & concepts - Softcron";

            //  Page.MaintainScrollPositionOnPostBack = true;
            if (!IsPostBack)
            {
                if (RouteData.Values["Id"] != null)
                {
                    string _categoryName = RouteData.Values["Id"].ToString();
                    string _final_CategoryName = string.Empty;
                    if (!string.IsNullOrEmpty(_categoryName))
                    {
                        string _friendlyUrl = null;

                        string lasttm = _categoryName.TrimEnd('-');
                        string[] arrOfSelections = lasttm.Split('-');
                        for (int i = 0; i < arrOfSelections.Length; i++)
                        {
                            string _subStringFriendlyUrl = arrOfSelections[i] + " ";
                            //insert command
                            _friendlyUrl = _friendlyUrl + _subStringFriendlyUrl;
                        }

                        if (!string.IsNullOrEmpty(_friendlyUrl))
                        {
                            string _final_friendly_url = _friendlyUrl.TrimEnd(' ');
                            _final_CategoryName = _final_friendly_url;
                        }
                    }

                    BindBlog(_final_CategoryName);
                }
                else if (RouteData.Values["tag"] != null)
                {
                    string _TagName = RouteData.Values["tag"].ToString();
                    string _final_TagName = string.Empty;
                    if (!string.IsNullOrEmpty(_TagName))
                    {
                        string _friendlyUrl = null;

                        string lasttm = _TagName.TrimEnd('-');
                        string[] arrOfSelections = lasttm.Split('-');
                        for (int i = 0; i < arrOfSelections.Length; i++)
                        {
                            string _subStringFriendlyUrl = arrOfSelections[i] + " ";
                            //insert command
                            _friendlyUrl = _friendlyUrl + _subStringFriendlyUrl;
                        }

                        if (!string.IsNullOrEmpty(_friendlyUrl))
                        {
                            string _final_friendly_url = _friendlyUrl.TrimEnd(' ');
                            _final_TagName = _final_friendly_url;
                        }


                    }

                    BindBlogbyTag(_final_TagName);
                }
                else
                {
                    BindBlog();
                }
                BindSubBlog();
                BindCategory();
                Bindtag();
            }
        }

        protected void rptrBlog_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string commandname = e.CommandName;
            string url = e.CommandArgument.ToString();

            switch (commandname)
            {
                case "view":
                    try
                    {
                        url = "/blog/" + url;
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
                        //url = "../assets/img/d-agency/blog/rec1.jpg";
                        url = "";
                    }
                    else
                    {
                        url = imageUrl + blogBaseURL + lblpic.Text;
                    }
                    imagethumbPreview.ImageUrl = url;


                    string heading = lblblogheading.Text;
                    //string alt = lblblogheading.Text.Replace(" ","-");

                    if (heading.Length > 30)
                    {
                        lblblogheading.Text = heading.Substring(0, 30);
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

        protected void rptrBlog_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {

                    Label lblDescription = e.Item.FindControl("lblDescription") as Label;
                    Label lblpic = (Label)e.Item.FindControl("lblpic");
                    Image lblimageurl = (Image)e.Item.FindControl("lblimageurl");

                    string description = lblDescription.Text;
                    string url;
                    if (description.Length > 200)
                    {
                        lblDescription.Text = description.Substring(0, 200);
                    }
                    else
                    {
                        lblDescription.Text = description;
                    }
                    if (string.IsNullOrEmpty(lblpic.Text))
                    {
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

                        //string tag = string.Empty;
                        //tag = id;
                        //tag = "/softcronblogs/" + tag;
                        //Response.Redirect(tag, false);
                        ////PopulateOrder(id);
                        ////ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "showModal();", true);
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

        /// <summary>
        /// This Method is Used to Get All UserRole List 
        /// </summary>
        private void BindSubBlog()
        {
            try
            {

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "SELECT * FROM BlogMaster where is_active=1";
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
        /// This Method is Used to Get All UserRole List 
        /// </summary>
        private void BindBlog(string _blog_Category_name)
        {
            try
            {

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    //  string _query = "select top 5 * from BlogMaster where is_active=1 and blog_category_id ='" + _blog_Category_id + "'";
                    string _query = "select * from BlogMaster where is_active=1 and blog_category_id in (select distinct blog_category_id from BlogCategory where BlogCategory.category_name='" + _blog_Category_name + "' and category_type='category' and is_active=1)";
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        _datatable_lstUserRole = new DataTable();
                        _sqlDataAdapter.Fill(_datatable_lstUserRole);
                        if (_datatable_lstUserRole.Rows.Count > 0)
                        {

                            rptrBlog.DataSource = _datatable_lstUserRole;
                            rptrBlog.DataBind();

                        }
                        else
                        {
                            rptrBlog.DataSource = null;
                            rptrBlog.DataBind();
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
        /// This Method is Used to Get All Blog From tag 
        /// </summary>
        private void BindBlogbyTag(string _tag_name)
        {
            try
            {

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "select * from BlogMaster where is_active=1 and tag_name like '%" + _tag_name + "%'";
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        _datatable_lstUserRole = new DataTable();
                        _sqlDataAdapter.Fill(_datatable_lstUserRole);
                        if (_datatable_lstUserRole.Rows.Count > 0)
                        {

                            rptrBlog.DataSource = _datatable_lstUserRole;
                            rptrBlog.DataBind();

                        }
                        else
                        {
                            rptrBlog.DataSource = null;
                            rptrBlog.DataBind();
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
        /// This Method is Used to Get All Blog List 
        /// </summary>
        private void BindBlog()
        {
            try
            {

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "select * from BlogMaster where is_active=1 ";
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        _datatable_lstUserRole = new DataTable();
                        _sqlDataAdapter.Fill(_datatable_lstUserRole);
                        if (_datatable_lstUserRole.Rows.Count > 0)
                        {
                            Session["bloglist"] = _datatable_lstUserRole;
                            rptrBlog.DataSource = _datatable_lstUserRole;
                            rptrBlog.DataBind();

                        }
                        else
                        {
                            rptrBlog.DataSource = null;
                            rptrBlog.DataBind();
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
        /// This Method is Used to Get All BlogCategory List 
        /// </summary>
        private void BindCategory()
        {
            try
            {

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "select distinct max(BlogCategory.blog_category_id) as blog_category_id ,max(BlogCategory.category_name) as category_name,count(BlogMaster.blog_category_id) as Total  from BlogCategory left join BlogMaster on BlogCategory.blog_category_id=BlogMaster.blog_category_id where BlogCategory.category_type='category' and BlogCategory.is_active=1  group by BlogCategory.blog_category_id ";
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand(_query, _sqlConnection))
                    {

                        _sqlCommand.CommandTimeout = 600;
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

        /// <summary>
        /// This Method is Used to Get All Tag List 
        /// </summary>
        private void Bindtag()
        {
            try
            {

                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    string _query = "SELECT * FROM BlogCategory where is_active=1 and category_type='tag' ";
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
    }
}