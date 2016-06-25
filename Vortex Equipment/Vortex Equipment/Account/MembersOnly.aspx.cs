using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vortex_Equipment
{
    public partial class MembersOnly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/SpecialOffers");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Manage");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Feedback");
        }
    }
}