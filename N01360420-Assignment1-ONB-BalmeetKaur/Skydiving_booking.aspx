﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Skydiving_booking.aspx.cs" Inherits="N01360420_Assignment1_ONB_BalmeetKaur.Skydiving_booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skydiving Booking</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section>
                <h2>BOOK SKYDIVING ONLINE NOW!!</h2>
            </section>

            <section>
                <h3>To create your reservation online,you will require the following information.Please answer the question below before booking.</h3>
            </section>

            <section>
                <h4>Why do you want to skydive?</h4>
                <asp:TextBox runat="server" ID="user_skydive_reason" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" Enableclientscript="true"  ErrorMessage="Please enter reason" ControlToValidate="user_skydive_reason"></asp:RequiredFieldValidator>
          
                <h4>Are you above 18 years of age?</h4>
                <asp:RadioButtonList runat="server" ID="user_age">
                    <asp:ListItem Text="Yes" Value="YES"></asp:ListItem>
                    <asp:ListItem Text="No" Value="NO"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select age" ControlToValidate="user_age"></asp:RequiredFieldValidator>

                <h4>Is your weight less than 240 lbs?</h4>
                <asp:RadioButtonList runat="server" ID="user_weight">
                    <asp:ListItem Text="Yes" Value="YES"></asp:ListItem>
                    <asp:ListItem Text="No" Value="NO"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select option" ControlToValidate="user_weight"></asp:RequiredFieldValidator>
           </section>

            <section>
                <h4>When do you want to skydive?</h4>
                <label>Select Date and Time:</label>
                <asp:DropDownList runat="server" ID="user_skydive_date">
                    <asp:ListItem Text="Select Date" Value=""></asp:ListItem>
                    <asp:ListItem Text="1" Value="day1"></asp:ListItem>
                    <asp:ListItem Text="2" Value="day2"></asp:ListItem>
                    <asp:ListItem Text="3" Value="day3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="day4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="day5"></asp:ListItem>
                    <asp:ListItem Text="6" Value="day6"></asp:ListItem>
                    <asp:ListItem Text="7" Value="day7"></asp:ListItem>
                    <asp:ListItem Text="8" Value="day8"></asp:ListItem>
                    <asp:ListItem Text="9" Value="day9"></asp:ListItem>
                    <asp:ListItem Text="10" Value="day10"></asp:ListItem>
                    <asp:ListItem Text="11" Value="day11"></asp:ListItem>
                    <asp:ListItem Text="12" Value="day12"></asp:ListItem>
                    <asp:ListItem Text="13" Value="day13"></asp:ListItem>
                    <asp:ListItem Text="14" Value="day14"></asp:ListItem>
                    <asp:ListItem Text="15" Value="day15"></asp:ListItem>
                    <asp:ListItem Text="16" Value="day16"></asp:ListItem>
                    <asp:ListItem Text="17" Value="day17"></asp:ListItem>
                    <asp:ListItem Text="18" Value="day18"></asp:ListItem>
                    <asp:ListItem Text="19" Value="day19"></asp:ListItem>
                    <asp:ListItem Text="20" Value="day20"></asp:ListItem>
                    <asp:ListItem Text="21" Value="day21"></asp:ListItem>
                    <asp:ListItem Text="22" Value="day21"></asp:ListItem>
                    <asp:ListItem Text="23" Value="day23"></asp:ListItem>
                    <asp:ListItem Text="24" Value="day24"></asp:ListItem>
                    <asp:ListItem Text="25" Value="day25"></asp:ListItem>
                    <asp:ListItem Text="26" Value="day26"></asp:ListItem>
                    <asp:ListItem Text="27" Value="day27"></asp:ListItem>
                    <asp:ListItem Text="28" Value="day28"></asp:ListItem>
                    <asp:ListItem Text="29" Value="day29"></asp:ListItem>
                    <asp:ListItem Text="30" Value="day30"></asp:ListItem>
                    <asp:ListItem Text="31" Value="day31"></asp:ListItem>
               </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select date" ControlToValidate="user_skydive_date"></asp:RequiredFieldValidator>
               <asp:DropDownList runat="server" ID="user_skydive_time">
                 <asp:ListItem Text="Select Time" Value=""></asp:ListItem>
                 <asp:ListItem Text="8:30am" Value="8:30am"></asp:ListItem>
                 <asp:ListItem Text="10:30am" Value="10:30am"></asp:ListItem>
                 <asp:ListItem Text="12:30pm" Value="12:30pm"></asp:ListItem>
                 <asp:ListItem Text="2:30pm" Value="2:30pm"></asp:ListItem>
                 <asp:ListItem Text="4:30pm" Value="4:30pm"></asp:ListItem>
               </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select time" ControlToValidate="user_skydive_time"></asp:RequiredFieldValidator>
            </section>

            <section>
                <h4>How many people you wish to book for this date and time?(maximum 2)</h4>
                <asp:TextBox runat="server" ID="people_attendes" ></asp:TextBox>
                <asp:RangeValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter number between 0  to 2"  MinimumValue="0"  MaximumValue="2" ControlToValidate="people_attendes"></asp:RangeValidator>
            </section>

            <section>
                <h4>Choose your jump type below to start:</h4>
                    <asp:RadioButtonList runat="server" ID="user_jump_type">
                        <asp:ListItem Text="Tendem" Value="TENDER"></asp:ListItem>
                        <asp:ListItem Text="TDS" Value="TDS"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select jump type" ControlToValidate="user_jump_type"></asp:RequiredFieldValidator>
            </section>

            <section>
                <h4>Choose your altitude:</h4>
                <asp:RadioButtonList runat="server" ID="user_altitude_type">
                    <asp:ListItem Text="18,000 Feet" Value="18,000FEET"></asp:ListItem>
                    <asp:ListItem Text="14,000 Feet" Value="14,000FEET"></asp:ListItem>
                    <asp:ListItem Text="10,000 Feet" Value="10,000FEET"></asp:ListItem>
                 </asp:RadioButtonList>  
                 <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please choose your altitude" ControlToValidate="user_altitude_type"></asp:RequiredFieldValidator>
            </section>


            <section>
                <h4>Number of Jumpers:(maximum 2)</h4>
                <asp:TextBox runat="server" ID="jumper_attendes" ></asp:TextBox>
                <asp:RangeValidator runat="server" EnableClientScript="true" ErrorMessage="Please number between 0 to 3" ControlToValidate="jumper_attendes" MinimumValue="0" MaximumValue="3"></asp:RangeValidator>
            </section>

            <section>
                <h4>Where Do you want to skydive?</h4>
                <label>Choose Location:</label>
                <asp:DropDownList runat="server" ID="user_location_selection">
                    <asp:ListItem Text="Select Location" Value=""></asp:ListItem>  
                    <asp:ListItem Text="Toronto" Value="Toronto"></asp:ListItem>
                    <asp:ListItem Text="FoxGlacier,NewZealand" Value="FoxGlacier,NewZealand"></asp:ListItem>
                    <asp:ListItem Text="Hawaii,United_States" Value="Hawaii,United_States"></asp:ListItem>
                    <asp:ListItem Text="Interlaken,Switzerland" Value="Interlaken,Switzerland"></asp:ListItem>
                    <asp:ListItem Text="Wollongong_Beach,Australia" Value="Wollongong_Beach,Australia"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please select location" EnableClientScript="true" ControlToValidate="user_location_selection"></asp:RequiredFieldValidator>
            </section>
            <section>
                <h4>To make booking at this date please fill contact details:</h4>
                <div>
                    <label>What's your Full Name?</label>
                    <asp:TextBox runat="server" ID="user_fullname" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter Full Name" ControlToValidate="user_fullname"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <% /* Used Regular Expression Validator from class lectures */ %>
                    <label>Please enter Your Phone No.ie (999) 212 8350</label>
                    <asp:TextBox runat="server" ID="user_phone_number" ></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage="Ivalid Phnone Number" ControlToValidate="user_phone_number" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}"></asp:RegularExpressionValidator>
                    
                </div>
                <div>
                    <label>What's your Email?</label>
                    <asp:TextBox runat="server" ID="user_email" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter email" ControlToValidate="user_email"></asp:RequiredFieldValidator> 
                </div>
            </section>
            <section>
                <asp:CheckBoxList ID="user_aggrement_selection" runat="server">
                    <asp:ListItem Text="I have read the skydiving policies and FAQ and agree to all published policies about age,height,weight and appointment times at faculty.All sales are final no refunds." Value="agreement_statement1"></asp:ListItem>
                    <asp:ListItem Text="I understand that the time I selected is my CHECK-IN time, not when I will be skydiving." Value="aggrement_statement2"></asp:ListItem>
                </asp:CheckBoxList>
            </section>
            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true" />
            </section>
            <div id="submit_details" runat="server"></div>
            <section>
                <input type="submit" value="BOOK NOW" />
            </section>
        </div>
    </form>
</body>
</html>
