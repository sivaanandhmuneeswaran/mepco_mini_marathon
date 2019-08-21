<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Marathon.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div.sticky {
            position: -webkit-sticky;
            position: sticky;
            top:0;
            text-align: center;
            border: 3px solid black;
            border-radius: 6px;
            border-color: black;
            width: 220px;
            height: 270px;
            box-sizing: border-box;	
            background-color: #1586C3;
            color: #FFF;
        }

        time.icon
        {
          font-size: 1em; /* change icon size */
          display: block;
          position: relative;
          width: 3em;
          height: 3em;
          background-color: #fff;
          border-radius: 0.6em;
          box-shadow: 0 1px 0 #bdbdbd, 0 2px 0 #fff, 0 3px 0 #bdbdbd, 0 4px 0 #fff, 0 5px 0 #bdbdbd, 0 0 0 1px #bdbdbd;
          overflow: hidden;
        }

        time.icon *
        {
          display: block;
          width: 100%;
          font-size: 1em;
          font-weight: bold;
          font-style: normal;
          text-align: center;
        }

        time.icon strong
        {
          position: absolute;
          top: 0;
          padding: 0.05em 0;
          color: #fff;
          background-color: #fd9f1b;
          border-bottom: 0.5px dashed #f37302;
          box-shadow: 0 2px 0 #fd9f1b;
        }

        time.icon span
        {
          font-size: 1.5em;
          letter-spacing: -0.05em;
          padding-top: 0.2em;
          color: #2f2f2f;
        }
    </style>
</head>
<body>

    <div class="sticky">
	    <form id="form1" runat="server" class="auto-style1">
            <table style="width:100%">
                <tr>
                <td style="align-content:center">
                     <asp:Image runat="server" ID="MarathonImg" Height="48px" ImageUrl="~/images/mm.png" Width="61px"/>
                </td>
                <td style="align-content:center">
                    <time datetime="2018-09-01" class="icon">
                      <em>Sat</em>
                      <strong>Sept</strong>
                      <span>01</span>
                    </time>
                </td>
            </tr>
            </table><br />
            
           
            <asp:Label ID="InfoLbl1" runat="server" Font-Bold="True" Font-Size="Large" Text="Mepco Mini Marathon'18"></asp:Label><br />
            <asp:Label ID="InfoLbl2" runat="server" Text="September 1, Wednesday" Font-Size="Medium"></asp:Label><br />
             <asp:Label ID="Infolbl3" runat="server" Text="Are you Participating?" Font-Size="Medium"></asp:Label>
            <asp:ScriptManager ID="DecisionScriptManager" runat="server">
            </asp:ScriptManager>
	        <asp:UpdatePanel ID="DecisionUpdatePanel" runat="server">
                <ContentTemplate>
                    <asp:RadioButtonList ID="SelectionRadioList" runat="server" Width="202px" Font-Size="Smaller">
                        <asp:ListItem Enabled="False" Value="1">Yes</asp:ListItem>
                        <asp:ListItem Enabled="False" Value="0">No</asp:ListItem>
                    </asp:RadioButtonList>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br>
	        <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Submit" Font-Size="Smaller" />
            <asp:Label ID="ErrorLbl" runat="server" Text="Limit Exceeded for today" Visible="False" Font-Size="Small"></asp:Label>
	        <br />
	        <br />
            <asp:Label ID="StatusLbl" runat="server" Text="Participating: " Font-Size="Smaller"></asp:Label>
            <asp:Label ID="StatusResult" runat="server" Font-Size="Smaller"></asp:Label>
	    </form>
    </div>
</body>
</html>