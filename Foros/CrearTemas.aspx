<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/MasterPage.Master" CodeBehind="CrearTemas.aspx.vb" Inherits="SISPEA.CrearTemas" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 58%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style5">
        <tr>
            <td>
                <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="CREAR TEMAS " Theme="Material" Width="100%">
                    <PanelCollection>
<dx:PanelContent runat="server">
    <table align="center" class="w-100">
        <tr>
            <td>
                <dx:ASPxComboBox ID="cmbCategoria" runat="server" Caption="SELECCIONE UNA CATEGORIA" DataSourceID="SqlListaCategorias" TextField="Categoria" ValueField="IDCategoria" Width="100%" Theme="Material">
                    <CaptionSettings Position="Top" VerticalAlign="Top" />
                </dx:ASPxComboBox>
                <asp:SqlDataSource ID="SqlListaCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:SISPEAConnectionString %>" SelectCommand="SELECT [IDCategoria], [Categoria] FROM [TB_Categorias] WHERE ([Estado] = @Estado)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="Estado" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxMemo ID="txttema" runat="server" Caption="INGRESE EL TEMA A DISCUTIR" Height="71px" Theme="Material" Width="100%">
                    <CaptionSettings Position="Top" VerticalAlign="Top" />
                </dx:ASPxMemo>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="w-100">
                    <tr>
                        <td style ="vertical-align :top ; width :50%">
                            <dx:ASPxDateEdit ID="dtpFechainicio" runat="server" EditFormat="DateTime" Caption="FECHA DE INICIO" Theme="Material" Width="100%">
                                <TimeSectionProperties Visible="True">
                                </TimeSectionProperties>
                                <CaptionSettings Position="Top" />
                            </dx:ASPxDateEdit>
                        </td>
                        <td style ="vertical-align :top ; width :50%">
                            <dx:ASPxDateEdit ID="dtpfechafinal" runat="server" EditFormat="DateTime" Caption="FECHA FINAL" Theme="Material" Width="100%">                                
                                <TimeSectionProperties Visible="True">
                                </TimeSectionProperties>
                                <CaptionSettings Position="Top" />
                            </dx:ASPxDateEdit>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <dx:ASPxCheckBox ID="chbEstado" runat="server" Checked="True" CheckState="Checked" Text="ESTADO" TextAlign="Left" Theme="Material" ValueChecked="1" ValueType="System.Int32" ValueUnchecked="0">
                </dx:ASPxCheckBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Guardar" Theme="Material">
                </dx:ASPxButton>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
                        </dx:PanelContent>
</PanelCollection>
                </dx:ASPxRoundPanel>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
