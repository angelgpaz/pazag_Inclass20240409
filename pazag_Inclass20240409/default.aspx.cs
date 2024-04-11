using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pazag_Inclass20240409
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblFruits.Items.Add("Strawberry");
            }
        }

        protected void lblFruits_SelectedIndexChanged(object sender, EventArgs e)
        {
            //This code runs when the user selects a new item from the lbFruits List box
            //Copy the currently selected item from the list box into our label
            lblChosenFruit.Text = lblFruits.SelectedValue;
        }
        //Event that will run when the user, in their browser, selects a fruit from list
        //"event-driven" programming
        //Our event is the user selected an item from list
    }
}