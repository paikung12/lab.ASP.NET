﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Gdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["d"] != null && Request.QueryString["m"] != null && Request.QueryString["y"] != null)
        {
            int d = Convert.ToInt32(Request.QueryString["d"]);
            int m = Convert.ToInt32(Request.QueryString["m"]);
            int y = Convert.ToInt32(Request.QueryString["y"]);
            GetData(d, m, y);
        }
        else
        {
            Response.Redirect("Calendar.aspx");
        }
    }
    private void GetData(int d, int m, int y)
    {
        string StrConn = WebConfigurationManager.ConnectionStrings
                  ["uppart2ConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "spCalendar";
                ObjCM.Parameters.AddWithValue("@Day", d);
                ObjCM.Parameters.AddWithValue("@Month", m);
                ObjCM.Parameters.AddWithValue("@Year", y);
                SqlDataReader ObjDR = ObjCM.ExecuteReader();
                GridView1.DataSource = ObjDR;
                GridView1.DataBind();
            }
            ObjConn.Close();
        }
    }
}