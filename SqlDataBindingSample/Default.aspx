<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SqlDataBindingSample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
    <style type="text/css">
        .auto-style1 {
            width: 117px;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table >
                <tr>
                    <td class="auto-style1" >Կատեգորիա</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="Id" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>"
                            SelectCommand="SELECT [Id], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >Ապրանքներ</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" SelectCommand="SELECT [Id], [Name] FROM [Products] WHERE ([CategoryId] = @CategoryId)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="CategoryId" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >Առաքման հասցե</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Patver" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
