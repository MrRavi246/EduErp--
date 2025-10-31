using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web; // Removed the incorrect 'Design' namespace


namespace EduErp.pages.faculty
{
    public partial class timetable1 : System.Web.UI.Page
    {
        string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        private CrystalDecisions.CrystalReports.Engine.ReportDocument cr = new ReportDocument();
        static string Crypath = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(conString);
            con.Open();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //getcon();
            //da = new SqlDataAdapter("select * from users", con);
            //ds = new DataSet();
            //da.Fill(ds);
            //string s = Server.MapPath("\"~/pages/faculty/Cat.xml");
            //ds.WriteXmlSchema(s);

            //string path = Server.MapPath("~/pages/faculty/Cat.xml");
            //cr.Load(path);
            //cr.SetDataSource(ds.Tables[0]);
            //cr.Refresh();
            //CrystalReportViewer1.ReportSource = cr;
            //cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "Cat");

            getcon();
            da = new SqlDataAdapter("select * from users", con);
            ds = new DataSet();
            da.Fill(ds);

            //cr.Load(Server.MapPath("CrystalReport1.rpt"));
            string path = Server.MapPath("~/pages/faculty/CrystalReport1.rpt");
            cr.Load(path);

            cr.SetDataSource(ds.Tables[0]);
            cr.Refresh();
            cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "User_Report");

        }
    }
}