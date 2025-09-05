using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduErp.pages.admin
{
    public partial class faculty1 : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        SqlConnection con;
        SqlDataAdapter adapter;
        DataSet dataSet;
        SqlCommand cmd;
        String fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                fillgrid(); // Load data only on first page load
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        //void clear()
        //{
        //    faculty_fname.Text = " ";
        //}


        //void imgupload()
        //{
        //    if (fldimg.HasFile)
        //    {
        //        fnm = "images/" + fldimg.FileName;
        //        fldimg.SaveAs(Server.MapPath(fnm));
        //    }
        //}


        void fillgrid()
        {
            getcon();
            adapter = new SqlDataAdapter("select * from faculty", con);
            dataSet = new DataSet();
            adapter.Fill(dataSet);
            GridView1.DataSource = dataSet;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Button2.Text == "Add")
            {
                getcon();                
                cmd = new SqlCommand("INSERT INTO faculty (first_name,last_name, Phone, department_id, Designation, qualification, experience_years, address) " 
                    + "Values('" + faculty_fname.Text + "','" + faculty_lname.Text + "','" + faculty_phone.Text + "','" + faculty_Department.SelectedValue + "','"+ Designation.SelectedValue + "','"+ Qualification.Text+ "','"+ faculty_experience.Text+ "','"+ faculty_address.Text+ "')", con);
                cmd.ExecuteNonQuery();
                //clear();
            }
            else
            {
                //cmd = new SqlCommand("update std_table set name='" + txtnum.Text + "',gender='" + rdegen.Text + "',city='" + city.Text + "' where id='" + ViewState["Id"] + "'", con);
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_delete")
            {
                int Id = Convert.ToInt32(e.CommandArgument);
                ViewState["Id"] = Id;
            }
        }

    }
}