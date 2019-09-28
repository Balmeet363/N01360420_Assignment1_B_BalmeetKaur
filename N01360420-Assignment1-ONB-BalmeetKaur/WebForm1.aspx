<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="N01360420_Assignment1_ONB_BalmeetKaur.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
            
            
            <div id="submit_details" runat="server"></div>
            <section>
                <input type="submit" value="BOOK NOW" />
            </section>
        </div>
    </form>
</body>
</html>
