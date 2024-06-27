using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
using BO;
using BAL;
using AForge.Imaging;
using AForge.Imaging.Filters;

public partial class Admin_wrk : System.Web.UI.Page
{
    Byte[] bytes;
    Bitmap img;
    DataTable dt;
    Bal_class bal = new Bal_class();
    Bo_class bo = new Bo_class();
    List<int> R = new List<int>();
    List<int> G = new List<int>();
    List<int> B = new List<int>();
    static int R1;
    static int G1;  
    static int B1;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Rgb_Click(object sender, EventArgs e)
    {
        
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        calc_RGB();

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        bo.R_value1 = R1;
        bo.G_value1 = G1;
        bo.B_value1 = B1;
        DataTable d = bal.Visual_ans(bo);
        DataList1.DataSource = d;
        DataList1.DataBind();
       
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        //List<string> val = new List<string>();
        //int n=CheckBoxList1.Items.Count;
        //for (int i = 0; i < n;i++ )
        //{
        //   val.Add(CheckBoxList1.Items[i].Text);
        //}
       
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Random r = new Random();
        int[] a1=new int[3];
        int[] b1 = new int[3];
        for (int i = 0; i < 3; i++)
        {
            a1[i] = r.Next(1, 200);
            b1[i] = r.Next(1, 200);
        }
        Bitmap bmb = new Bitmap(Server.MapPath(@"Uploading_imgs\" + name.Text.Trim()));
        Bitmap objBitmap = new Bitmap(bmb, new Size(200, 200));
        Graphics grph = Graphics.FromImage(objBitmap);
        SolidBrush br = new SolidBrush(Color.Green);
        for (int i = 0; i < a1.Count(); i++)

        {
            for (int j = 0; j < b1.Count(); j++)
            {
                grph.FillEllipse(br, a1[i], b1[j], 6, 6);
            }
        }
        Response.ContentType = "image/Jpeg";
        objBitmap.Save(Response.OutputStream, ImageFormat.Jpeg);
        objBitmap.Dispose(); 
    }
    public void calc_RGB()
    {
          
        Bitmap img = new Bitmap(Server.MapPath(@"Uploading_imgs\" + name.Text.Trim()));

        Color c;
        int[] a1 = { 0, 50, 100 };
        int[] b1 = { 0, 50, 100 };

        for (int i = 0; i < a1.Count(); i++)
        {
            for (int j = 0; j < b1.Count(); j++)
            {
                c = img.GetPixel(a1[i], b1[j]);
                if (!R.Contains(c.R))
                {
                    R.Add(c.R);
                }
                if (!G.Contains(c.G))
                {
                    G.Add(c.G);
                }
                if (!B.Contains(c.B))
                {
                    B.Add(c.B);
                }

            }
        }
        R.Distinct();
        G.Distinct();
        B.Distinct();
      
        int[] a = R.ToArray();
        int[] b = G.ToArray();
        int[] m = B.ToArray();
        bo.R_value1 = a.Count();
        R1 = a.Count();
        bo.G_value1 = b.Count();
        G1 = b.Count();
        bo.B_value1 = m.Count();
        B1 = m.Count();
        bo.Img_name1 = name.Text.Trim();
        if (bal.RGB_updated(bo))
        {

            string[] na = { "R", "G", "B" };
            dt = new DataTable();
            dt.Columns.Add("DATA", typeof(string));
            dt.Columns.Add("VALUE(calc)", typeof(decimal));
            dt.Rows.Add(na[0], a.Count());
            dt.Rows.Add(na[1], b.Count());
            dt.Rows.Add(na[2], m.Count());
            string[] x = new string[dt.Rows.Count];
            decimal[] y = new decimal[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }
            BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = y, BarColor = "#4B0082" });
            BarChart1.CategoriesAxis = string.Join(",", x);
            BarChart1.ChartTitle = dt.Rows[0][0].ToString();
            BarChart1.ChartWidth = (x.Length * 100).ToString();
            BarChart1.ChartHeight = (y.Length * 100).ToString();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
  
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int[] a1 = { 0, 100, 195 };
        int[] b1 = { 0, 100, 195 };
        Bitmap bmb = new Bitmap(Server.MapPath(@"Uploading_imgs\" + name.Text.Trim()));
        Bitmap objBitmap = new Bitmap(bmb, new Size(200, 200));
        Graphics grph = Graphics.FromImage(objBitmap);
        SolidBrush br = new SolidBrush(Color.Green);
        for (int i = 0; i < a1.Count(); i++)
        {
            for (int j = 0; j < b1.Count(); j++)
            {
                grph.FillEllipse(br, a1[i], b1[j], 4, 4);
            }
        }
        Response.ContentType = "image/Jpeg";
        objBitmap.Save(Response.OutputStream, ImageFormat.Jpeg);
        objBitmap.Dispose(); 
    
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        upd.SaveAs(Server.MapPath(@"Uploading_imgs\" + upd.FileName));
        System.IO.Stream fs = upd.PostedFile.InputStream;
        System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
        name.Text = upd.FileName;
        bo.Imge1 = upd.FileBytes;
        bo.Img_name1 = name.Text.Trim();
        if (bal.Image_insrt(bo))
        {

            FileInfo f = new FileInfo(upd.FileName);
            size.Text = upd.FileContent.Length + "kB";
            ext.Text = Path.GetExtension(upd.FileName);
            bytes = br.ReadBytes((Int32)fs.Length);
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            Image1.ImageUrl = "data:image/png;base64," + base64String;
            Image1.Visible = true;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        // create corner detector's instance
        SusanCornersDetector scd = new SusanCornersDetector();
        // create corner maker filter
        CornersMarker filter = new CornersMarker(scd, Color.Red);
        // apply the filter
        Bitmap bmb = new Bitmap(Server.MapPath(@"Uploading_imgs\" + name.Text.Trim()));
        filter.ApplyInPlace(bmb);
        Bitmap objBitmap = new Bitmap(bmb, new Size(200, 200));
        Graphics grph = Graphics.FromImage(objBitmap);
        SolidBrush br = new SolidBrush(Color.Green);
        Response.ContentType = "image/Jpeg";
        objBitmap.Save(Response.OutputStream, ImageFormat.Jpeg);
        objBitmap.Dispose(); 
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "select")
        {
            bo.Dis_name1 = e.CommandArgument.ToString();
            bo.Img_name1 = name.Text.Trim();
            if (bal.Final_cluster(bo))
            {
                Label1.Text = "Updated Sucessfully";
            }
            else
            {
                Label1.Text = "Sorry";
            }
 
        }
    }
}