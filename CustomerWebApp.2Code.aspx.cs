using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;


namespace Shoolroj2
{
    public partial class CustomerPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Focus();
            }

           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           


            string UserName = TextBox1.Text.ToUpper();

            StringBuilder UserChoice = new StringBuilder();
            foreach (int item in ListBox1.GetSelectedIndices())
            {
                //if (ListBox1.SelectedValue == ListBox1.Items[item].Value)

                UserChoice.Append(ListBox1.Items[item].Text);

            }
           
           
            if (RadioButton1.Checked)
            {
                UserChoice.Append(" to " + RadioButton1.Text);

            }
            if (RadioButton2.Checked)
            {
                UserChoice.Append(" " + RadioButton2.Text);

            }


            //StringBuilder UserSelection = new StringBuilder();

            //if (CheckBox1.Checked)
            //{
            //    UserSelection.Append(";" + CheckBox1.Text);
            //    TextBox8.Text = "You selected " + UserChoice.ToString();
            //}
            //if (CheckBox2.Checked)
            //{
            //    UserSelection.Append("," + CheckBox2.Text);

            //}
            //if (CheckBox3.Checked)
            //{
            //    UserSelection.Append("," + CheckBox3.Text);

            //}
            //if (CheckBox4.Checked)
            //{
            //    UserSelection.Append("," + CheckBox4.Text);

            //}
            //  TextBox8.Text = "Hi " + UserName + " you ordered " + UserChoice.ToString();

            StringBuilder UserSelections = new StringBuilder();

            if (CheckBox1.Checked)
            {
                //UserSelections.Insert(0, CheckBox1.Text);
                UserSelections.Append(CheckBox1.Text);
            }
            if (CheckBox2.Checked)
            {
                // UserSelections.Insert(1, CheckBox2.Text.ToString());
                UserSelections.Append("\n" + CheckBox2.Text);
            }
            if (CheckBox3.Checked)
            {
                //UserSelections.Insert(2, CheckBox3.Text.ToString());
                UserSelections.Append("\n" + CheckBox3.Text);
            }
            if (CheckBox4.Checked)
            {
                // UserSelections.Insert(3,CheckBox4.Text.ToString());
                UserSelections.Append("\n" + CheckBox4.Text);
            }

            // if (TextBox1.Text == string.Empty)
            //{

            //   TextBox8.Text = "The form was not submited, please fill all required fields.";
            //TextBox8.Text = "You selected " + UserSelections.ToString();
            // }
            //else
            //{
            
            
                
           if(!Page.IsValid)
            {
                TextBox8.ForeColor = System.Drawing.Color.Red;
                TextBox8.Text = "Submission failed, Please fill all required field (*)";
            }
           else
            { 
            TextBox8.ForeColor = System.Drawing.Color.Black;
            TextBox8.Text = "Hi " + UserName + " you ordered " + UserChoice.ToString() + "\n" + "You selected Toppings\n" + UserSelections.ToString();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            
            TextBox4.Text = " ";

            TextBox8.Text = string.Empty;
            TextBox1.Text = "" ;
            //CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            RadioButton2.Checked = false;
          //  RadioButton1.Checked = false;





        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
 