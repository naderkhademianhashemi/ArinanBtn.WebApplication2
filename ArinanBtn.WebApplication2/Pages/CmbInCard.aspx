<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CmbInCard.aspx.cs" Inherits="ArinanBtn.WebApplication2.Pages.CmbInCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>

class CMB extends Card {
    constructor($mainPage: JQuery) {
        super('card 1 ');
        this.$card.appendTo($mainPage);

        var $row = $('<div class="row" />').appendTo(this.$body);
        var $col4 = $('<div class="col col-4" />').append('&nbsp;').appendTo($row);
        var $col8 = $('<div class="col col-8 text-left" />').appendTo($row);

        var $selectFilterLibrary = $('<select />').appendTo($col8);

        this.getLibraries($selectFilterLibrary);
       
    }
    getLibraries($selectLibs: JQuery) {
        var libs = [{ LibId: 1, Title: 'AA' }, { LibId: 2, Title: 'BB' }];
        $selectLibs.empty().append(`<option value="">${resource.All}</option>`);
        $selectLibs.append(libs.map(lib => `<option value="${lib.LibId}">${lib.Title}</option>`));
    }
}

$(function () {

    var cmb = new CMB($('#mainPage'));

});
