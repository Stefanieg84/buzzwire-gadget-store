Public Class Form4
    
Private Sub SuppliersBindingNavigatorSaveItem_Click(sender As Object, e As EventArgs) Handles SuppliersBindingNavigatorSaveItem.Click
        Me.Validate()
        Me.SuppliersBindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.SuppliersDataSet)
    End Sub

    Private Sub Form4_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'SuppliersDataSet.Suppliers' table. You can move, or remove it, as needed.
        Me.SuppliersTableAdapter.Fill(Me.SuppliersDataSet.Suppliers)
    End Sub

    Private Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub

    Private Sub btnProcess_Click(sender As Object, e As EventArgs) Handles btnProcess.Click
        If Not Supp_IDTextBox.Text = "S001" <> "S999" Then
            MsgBox("Supp_ID must consist of the letter S and 3 didgits!")
        End If

        If Not TelephoneTextBox.Text = "######" Then
            MsgBox("Telephone number must consist of 6 digits!")
        End If

        If Not FaxTextBox.Text = "######" Then
            MsgBox("Fax number must consist of 6 digits!")
        End If

        If Not E_mailTextBox.Text = "*@*.*" Then
            MsgBox("Please insert proper format of an email address!")
        End If

    End Sub

End Class