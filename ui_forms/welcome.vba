Public Class Form1
    Private Sub btnNext_Click(sender As Object, e As EventArgs) Handles btnNext.Click
        LoginForm1.Show()
    End Sub

    Private Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub
End Class