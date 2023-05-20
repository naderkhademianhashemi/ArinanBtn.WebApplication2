<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BtnSea.aspx.cs" Inherits="ArinanBtn.WebApplication2.Pages.BtnSea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>

class BtnSea extends Card {
    constructor($mainPage: JQuery) {
        super(' ');

        this.$card.appendTo($mainPage);

        var $row = $('<div class="row" />').appendTo(this.$body);
        var $col4 = $('<div class="col col-4" />').append('&nbsp;').appendTo($row);
        var $col8 = $('<div class="col col-8 text-left" />').appendTo($row);

        var $actions = $('<div class="display-inline-block" />').appendTo($col4);


        $('<button class="btn btn-sea" target="_blank" />')
            .html('<i class="fa fa-books-medical"></i> ' 
            s+ resource.Menu_ListingWorksheets)
            .on("click", ev => alert("Menu_ListingWorksheets"))
            .appendTo($actions.append(' '));

    }
}

$(function () {
    var btnNdr = new BtnSea($("#mainPage"));

})
