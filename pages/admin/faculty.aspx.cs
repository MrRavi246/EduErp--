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

            string FirstName = faculty_fname.Text;
            string LastName = faculty_lname.Text;
            string Email = faculty_email.Text;
            string Phone = faculty_phone.Text;
            //string Department = faculty_Department.SelectedIndex;
            string Address = faculty_address.Text;
            string Experince = faculty_experience.Text;
            string Designation = faculty_Designation.SelectedValue;
            string Qualification = faculty_Qualification.Text;
    



            if (Button2.Text == "Add")
            {

                string userQuery = "INSERT INTO users (email, password_hash, role, is_active) " +
                   "OUTPUT INSERTED.id " +
                   "VALUES ('" + Email + "', '" + (FirstName) + "', 'faculty', 1)";
                cmd = new SqlCommand(userQuery, con);
                int newUserId = (int)cmd.ExecuteScalar();


                getcon();                
                cmd = new SqlCommand("INSERT INTO faculty (first_name,last_name, Phone, department_id, Designation, qualification, experience_years, address) " 
                    + "Values('" + faculty_fname.Text + "','" + faculty_lname.Text + "','" + faculty_phone.Text + "','" + faculty_Department.SelectedValue + "','"+ faculty_Designation.SelectedValue + "','"+ faculty_Qualification.Text+ "','"+ faculty_experience.Text+ "','"+ faculty_address.Text+ "')", con);
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