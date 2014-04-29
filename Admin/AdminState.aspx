﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHome.Master" AutoEventWireup="true" CodeBehind="AdminState.aspx.cs" Inherits="EBuzz_Cloud.Admin.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<head id="Head1" runat="server">
        <style type="text/css">
            .cls
            {
                border: 0px solid gray;
                width: 100%;
                height: auto;
                padding: 15px;
                margin-top: 30px;
                margin-left: 95px;
                border-radius: 10px 10px 10px 10px;
                box-shadow: 0px 0px 20px #072C53;
                margin: 5px 0px 0px 0px;
            }
            #reg
            {
                margin: 5px 0px 0px 295px;
            }
            #blanket
            {
              /*  background-color: #111;    */
                opacity: 0.65;
                position: absolute;
                z-index: 9001; /*ooveeerrrr nine thoussaaaannnd*/
                top: 0px;
                left: 0px;
                width: 100%;
            }
            #popUpDiv
            {
                position: absolute;
                color:Black;
                width: 190px;
                height: 53px;
                z-index: 9002; /*ooveeerrrr nine thoussaaaannnd*/
                border: 0px solid red;
                border-radius: 10px 10px 10px 10px;
                box-shadow: 0px 0px 10px black;
                font-family: Verdana;
                padding: 1%;
                margin-left:180px;
            }
            #ContentPlaceHolder1_Label1
            {
                color:Red;
                font-family:Verdana;
            }
        </style>
        <script src="../scripts/csspopup.js" type="text/javascript"></script>
        <script type="text/javascript" language="javascript">
            function Data() {
                var Country = document.getElementById('ContentPlaceHolder1_drpcountry');
                var State = document.getElementById('ContentPlaceHolder1_txtstate');
                if (Country.value == 0) {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Select Country";
                    popup('popUpDiv');
                    return false;
                }
                if (State.value == "") {
                    var Lbl = document.getElementById('ContentPlaceHolder1_Label1');
                    Lbl.innerHTML = "Please Enter State";
                    popup('popUpDiv');
                    return false;
                }
                else {
                    return true;
                }
            }
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table align="center" width="100%">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lbladminstate" runat="server" Text="ENTER STATE" Font-Size="X-Large"></asp:Label>
                </h1>
            </td>
        </tr>
    </table>
    <fieldset class="cls">
        <div align="center">
            <table style="border: 0px;">
                <tr>
                    <td align="right">
                        <asp:Label ID="lblcountry" runat="server" Text="Country : "></asp:Label>
                    </td>
                    <td style="color: Red;">
                        *
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="drpcountry" runat="server" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="lblstate" runat="server" Text="State : "></asp:Label>
                    </td>
                    <td style="color: Red;">
                        *
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtstate" runat="server" ></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" align="center">
                        <asp:Button ID="btnok" runat="server" Text="OK" OnClick="btnok_Click" OnClientClick="return Data(); " />
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
                    </td>
                </tr>
            </table>
            <div id="blanket" style="display:none;"></div>
            <div id="popUpDiv" style="display: none;">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br /><br />
                <a href="#" onclick="popup('popUpDiv')">
                    <asp:Button ID="btnclose" runat="server" Text="OK" />
                </a>
            </div>
        </div>
        <table class="multicolumnGrid" style="margin-top: 0px;" align="center" width="100%">
            <tr align="left">
                <td colspan="5">
                    <div style="overflow: auto; height: 100%; width: 100%;">
                        <div style="width: 100%;">
                            <asp:GridView ID="gridviewstate" runat="server" AutoGenerateColumns="False" Width="100%"
                                HeaderStyle-Height="22px" HeaderStyle-Font-Size="13px" OnRowCancelingEdit="gridviewstate_RowCancelingEdit"
                                OnRowEditing="gridviewstate_RowEditing" OnRowUpdating="gridviewstate_RowUpdating"
                                AllowPaging="True" DataKeyNames="stateid" OnPageIndexChanging="gridviewstate_PageIndexChanging"
                                PageSize="5" ShowFooter="True" OnRowCommand="gridviewstate_RowCommand">
                                <Columns>
                                    <asp:TemplateField>
                                        <FooterTemplate>
                                            <asp:Button ID="Button1" runat="server" CommandName="DeleteAll" Text="Delete" />
                                        </FooterTemplate>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"
                                                Text="Select All" />
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Country Name">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# bind("countryname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="State Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("statename") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# bind("statename") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:Label ID="Label3" runat="server" Text="No Record To Display....."></asp:Label>
                                </EmptyDataTemplate>
                                <HeaderStyle />
                                <HeaderStyle CssClass="t" />
                            </asp:GridView>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
