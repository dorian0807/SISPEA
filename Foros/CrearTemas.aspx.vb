Public Class CrearTemas
    Inherits System.Web.UI.Page
    Dim funcion As New Funciones
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ASPxButton1_Click(sender As Object, e As EventArgs) Handles ASPxButton1.Click
        funcion.EjecutarFuncion("insert into [TB_Temas] ([IDCategoria],[Tema],[FechaInicio],[FechaFinal],[Estado],[UsuarioSistema]) values ('" & cmbCategoria.Value & "','" & txttema.Text & "','" & dtpFechainicio.Value & "','" & dtpfechafinal.Value & "','" & chbEstado.Value & "','" & Session("Usuario") & "')")
    End Sub
End Class