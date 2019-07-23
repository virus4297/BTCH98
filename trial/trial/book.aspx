<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="trial.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            NAME:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            CONTACT:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            EMAIL:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            BOOK NAME:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            DESCRIPTION:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
