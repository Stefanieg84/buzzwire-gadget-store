Public Class Form3
    
    Private Sub MembersBindingNavigatorSaveItem_Click(sender As Object, e As EventArgs) Handles MembersBindingNavigatorSaveItem.Click
        Me.Validate()
        Me.MembersBindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.MembersDataSet)
    End Sub

    Private Sub Form3_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'MembersDataSet.Members' table. You can move, or remove it, as needed.
        Me.MembersTableAdapter.Fill(Me.MembersDataSet.Members)
    End Sub

    Private Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub

    Private Sub btnProcess_Click(sender As Object, e As EventArgs) Handles btnProcess.Click
        If Not MemIDTextBox.Text = "M001" <> "M999" Then
            MsgBox("MemID must consist of the letter M and 3 didgits!")
        End If
        
        If Not DOBDateTimePicker.Text <= 31 / 12 / 1996 Then
            MsgBox("Must be 18 years or older!")
        End If
        
        If Not CellNoTextBox.Text = "##########" Then
            MsgBox("CellNo consists of 10 digits!")
        End If
        
        If Not EmailTextBox.Text = "*@*.*" Then
            MsgBox("Please use the proper format for an email address. e.g. juicegrape@gmail.com")
        End If
        
        If Not AccNoTextBox.Text = "################" Then
            MsgBox("AccNo consists of 16 digits!")
        End If
        
    End Sub

End Class