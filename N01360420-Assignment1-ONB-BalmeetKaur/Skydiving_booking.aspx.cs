using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01360420_Assignment1_ONB_BalmeetKaur
{
    public partial class Skydiving_booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack)
            {
                Page.Validate();
                if(Page.IsValid)
                {
                    //Declaring Variables and storing information in them
                    int total_cost = 0;
                    string User_Skydive_Reason = user_skydive_reason.Text;
                    string User_Age = user_age.Text;
                    string User_Weight = user_weight.Text;
                    string User_Jump_Type =user_jump_type.Text;
                    int Tendem_Cost = 50;
                    int TDS_Cost = 60;
                    string User_Altitude_Type =user_altitude_type.Text;
                    int Altitude_18000 = 100;
                    int Altitude_14000 = 80;
                    int Altitude_10000 = 60;
                    string User_Skydive_Date = user_skydive_date.Text;
                    string User_Skydive_Time = user_skydive_time.Text;
                    int People_Attendes = Convert.ToInt32(people_attendes.Text);
                    int one_attende_cost = 10;
                    int two_attende_cost = 20;
                    int Jumper_Attendes = Convert.ToInt32(jumper_attendes.Text);
                    int one_jumper_cost = 20;
                    int two_jumper_cost = 40;
                    string User_Location_Selection = user_location_selection.Text;
                    string User_FullName = user_fullname.Text;
                    string User_Phone_Number = user_phone_number.Text;
                    string User_Email = user_email.Text;

                    //calculating cost based on Tender or TDS Jump type
                    if(User_Jump_Type=="TENDER")
                    {
                        total_cost += Tendem_Cost;
                    }
                    else
                    {
                        total_cost += TDS_Cost;
                    }

                    // Calculating cost based on Altitude type
                    if(User_Altitude_Type=="18,000FEET")
                    {
                        total_cost += Altitude_18000;
                    }
                    else if(User_Altitude_Type=="14,000FEET")
                    {
                        total_cost += Altitude_14000;
                    }
                    else
                    {
                        total_cost += Altitude_10000;
                    }

                    //Calculating cost depending on how many people user has selected
                    if(People_Attendes==1)
                    {
                        total_cost += one_attende_cost;
                    }
                    else if(People_Attendes==2)
                    {
                        total_cost += two_attende_cost;
                    }
                    else
                    {
                        total_cost += 0;
                    }

                    //Calculating cost based on number of jumpers selected by user
                    if (Jumper_Attendes == 1)
                    {
                        total_cost += one_jumper_cost;
                    }
                    else if (Jumper_Attendes == 2)
                    {
                        total_cost += two_jumper_cost;
                    }
                    else
                    {
                        total_cost += 0;
                    }

                    //Summary of information recieved
                   
                    submit_details.InnerHtml = "<br>"+"Thanku For Submitting" + "<br/>"+"<br>";
                    submit_details.InnerHtml += "Reason for Skydiving:" +" " +User_Skydive_Reason + "<br/>";
                    submit_details.InnerHtml += "Age above 18 Years:" + " "+User_Age + "<br/>";
                    submit_details.InnerHtml += "Weight below 240lbs:" + " " + User_Weight + "<br/>";
                    submit_details.InnerHtml += "Jumper Type:" + " " + User_Jump_Type + "<br/>";
                    submit_details.InnerHtml += "Altitude Type:" + " " + User_Altitude_Type + "<br/>";
                    submit_details.InnerHtml += "SkyDiving Date:" + " " + User_Skydive_Date + "<br/>";
                    submit_details.InnerHtml += "SkyDiving Time:" + " " + User_Skydive_Time + "<br/>";
                    submit_details.InnerHtml += "Number of People Booked:" + " " + People_Attendes + "<br/>";
                    submit_details.InnerHtml += "Number of Jumpers Entered:" + " " + Jumper_Attendes + "<br/>";
                    submit_details.InnerHtml += "Location Selected:" + " " + User_Location_Selection + "<br/>";
                    submit_details.InnerHtml += "Full Name:" + " " + User_FullName + "<br/>";
                    submit_details.InnerHtml += "Phone Number:" + " " + User_Phone_Number + "<br/>";
                    submit_details.InnerHtml += "Email:" + " " + User_Email + "<br/>";
                    submit_details.InnerHtml += "Your Total Cost is:" + " " + total_cost + "<br/>";

                }

            }
            
        }
    }
}