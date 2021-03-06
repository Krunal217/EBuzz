﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/HomeMaster.Master" AutoEventWireup="true" CodeBehind="UserSearchCollages.aspx.cs" Inherits="EBuzz_Cloud.User.WebForm11" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<head>
        <style type="text/css">
            .drp
            {
                width: 100%;
                box-shadow: 1px 1px 1px black;
                height: 100%px;
                margin-left: 2%;
                margin-top: 1%;
                border-radius: 25px;
            }
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
        </style>
        <script type="text/javascript">
            function download(file) {
                window.location = file;
            }
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <%--<div id='cssmenu'>
<ul>
   <li><a href="SearchCollagesInIndia.aspx" target="_self"><span>Collages In India</span></a></li>
   <li><a href='#'><span>Study Abroad Destionation</span></a></li>
   <li><a href='#'><span>Collages search</span></a></li>
   <li><a href='#'><span>Counclers In India</span></a></li>
   <li class='last'><a href='#'><span>Coaching Centers</span></a></li>
</ul>
</div>--%>
    <fieldset class="cls">
        <div style="width: 100%; height: auto;">
            <cc1:TabContainer ID="TabContainer1" runat="server" TabIndex="0">
                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="Collages in India" TabIndex="0">
                    <ContentTemplate>
                        <br />
                        <table>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="drpcategory" runat="server" Width="100%">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="drpstate" runat="server" Width="100%">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
                                </td>
                            </tr>
                        </table>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td colspan="5">
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchcollage" runat="server" OnItemCommand="repeatersearchcollage_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Collages In India</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollage" runat="server" Text="Collage Name : " Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                                <asp:Label ID="lblcollage1" runat="server" Text='<%#bind("collagename") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblcollagedetail" runat="server" Text='<%#bind("collagedetail") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnmoreinfo" runat="server" CommandArgument='<%#bind("collagelink") %>'
                                                                    BackColor="#EBEFF0" CommandName="MoreInfo">More Info....</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </cc1:TabPanel>
            </cc1:TabContainer>
        </div>
    </fieldset>
</asp:Content>
