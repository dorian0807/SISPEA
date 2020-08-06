Imports System.Data.SqlClient
Public Class CrearCategoria
    Inherits System.Web.UI.Page
    Dim Funcion As New Funciones
    Dim Existe As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ASPxButton1_Click(sender As Object, e As EventArgs) Handles ASPxButton1.Click
        ExtraerDatos("Select count(*) FROM [SISPEA].[dbo].[TB_Categorias] where [Categoria]='" & txtcategoria.Text & "'", 1)
        If Existe >= 1 Then
            ScriptManager.RegisterStartupScript(Me.Page, Me.GetType(), "popup", String.Format("warningalert('{0}','{1}');", "ALERTA", "Esta categoria ya fue agregada "), True)
        Else
            ASPxButton1.Enabled = False
            Funcion.EjecutarFuncion(" insert into [TB_Categorias] ([Categoria],[Usuario],[Estado]) values ('" & txtcategoria.Text & "','" & Session("Usuario") & "','" & chbestado.ValueChecked & "')")
            ScriptManager.RegisterStartupScript(Me.Page, Me.GetType(), "popup", String.Format("successalert('{0}','{1}');", "GUARDADO", "Categoria agregada"), True)
        End If

    End Sub

    Public Sub ExtraerDatos(Consulta As String, NC As Integer)
        Dim myconnection As SqlConnection
        Dim myCommand As SqlCommand
        myconnection = New SqlConnection(Conexiones.cadenaSISPEA)
        Dim ra As Integer
        Dim dr As SqlDataReader
        myconnection.Open()
        myCommand = New SqlCommand(Consulta, myconnection)
        ra = myCommand.ExecuteNonQuery
        dr = myCommand.ExecuteReader()
        If NC = 1 Then
            If (dr.Read()) Then
                Existe = dr(0).ToString
            Else

            End If
            dr.Close()
            myconnection.Close()
        ElseIf NC = 2 Then

            If (dr.Read()) Then

                dr.Close()
                myconnection.Close()
            End If
        ElseIf NC = 3 Then

        End If

    End Sub
End Class