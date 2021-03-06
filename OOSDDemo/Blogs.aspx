﻿<%@ Page Title="Blogs" Language="C#" MasterPageFile="~/Blog.Master" AutoEventWireup="true" CodeBehind="Blogs.aspx.cs" Inherits="OOSDDemo.Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: center;
            width: 640px;
            overflow: hidden;
        }

        .auto-style3 {
            text-align: right;
        }

        .auto-style4 {
            text-align: justify;
        }

        .auto-style5 {
            text-align: center;
            height: 32px;
        }

        .ImageStyle {
            width: 640px;
        }

            .ImageStyle:hover {
                transform: scale(1.4);
                transition: all 1s ease-in-out;
                filter: brightness(.5);
            }

        .form-control {
            /*display: block;*/
            /*padding: 6px 12px;*/
            font-size: 14px;
            line-height: 1.428571429;
            color: #555555;
            vertical-align: middle;
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
            transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
        }

            .form-control:focus {
                border-color: #66afe9;
                outline: 0;
                -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(102, 175, 233, 0.6);
                box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(102, 175, 233, 0.6);
            }

        .ForLabel {
            background-color: #fbfbfb;
            border-radius: 18px;
            /*line-height: 16px;*/
            padding: 9px 12px;
            margin-bottom:5px;
            word-break: break-word;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
        <asp:DataList ID="DataList1" runat="server" Width="1252px" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="auto-style1 , ForLabel">
                    <tr>
                        <td class="auto-style5">
                            <asp:LinkButton ID="LinkButtonTitle" runat="server" Font-Bold="True" Font-Names="Consolas" Font-Size="X-Large" Font-Underline="True" Text='<%# Eval("B_Title") %>' CommandName="view"></asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Categorized as
                        <asp:Label ID="LabelCategory" runat="server" Text='<%# Eval("B_Category") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Added on
                        <asp:Label ID="LabelDate" runat="server" Text='<%# Eval("B_Date") %>' Font-Underline="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Total Comment
                            <asp:Label ID="Label1" runat="server" Font-Underline="False" Text='<%# Eval("Total Comment") %>' Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Added by
                        <asp:LinkButton ID="LinkButtonName" runat="server" PostBackUrl='<%# "GetProfile.aspx?username=" + Eval("Username") %>' Text='<%# Eval("Name") %>'></asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "data:Image/jpg;base64," + GetBlogImageString64(HttpUtility.UrlEncode( Eval("B_Title").ToString())) %>' Width="640px" CommandName="viewbyimage" CssClass="ImageStyle" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
