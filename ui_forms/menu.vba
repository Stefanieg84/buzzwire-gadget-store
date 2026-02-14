Public Class Form2
    
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btnMembers.Click
        Form3.Show()
    End Sub

    Private Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        Me.Close()
        LoginForm1.Show()
    End Sub

    Private Sub btnSuppliers_Click(sender As Object, e As EventArgs) Handles btnSuppliers.Click
        Form4.Show()
    End Sub

    Private Sub btnStock_Click(sender As Object, e As EventArgs) Handles btnStock.Click
        Form5.Show()
    End Sub

    Private Sub btnTransactionFile_Click(sender As Object, e As EventArgs) Handles btnTransactionFile.Click
        Form6.Show()
    End Sub

End Class