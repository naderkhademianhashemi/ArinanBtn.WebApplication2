<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BtnNdr.aspx.cs" Inherits="ArinanBtn.WebApplication2.Pages.BtnNdr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SimpleFormPlace" runat="server">
    <script src="../Scripts/NDR/BtnNdr.js"></script>

    <div class="grid" id="mainPage">


    </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ModalsContent" runat="server">

    

</asp:Content>

class BtnNdr extends Card {
    constructor($mainPage: JQuery) {
        super(' ');

        this.$card.appendTo($mainPage);

        var $row = $('<div class="row" />').appendTo(this.$body);
        var $col4 = $('<div class="col col-4" />').append('&nbsp;').appendTo($row);
        var $col8 = $('<div class="col col-8 text-left" />').appendTo($row);

        var $actions = $('<div class="display-inline-block" />').appendTo($col4);


        Button("NDR", ev => alert("NDR")).appendTo($actions.append(' '));

    }
}

$(function () {
    var btnNdr = new BtnNdr($("#mainPage"));

})
