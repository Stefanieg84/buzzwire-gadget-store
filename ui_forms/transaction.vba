Public Class Form6
    
    Private Sub Transaction_FileBindingNavigatorSaveItem_Click(sender As Object, e As EventArgs) Handles Transaction_FileBindingNavigatorSaveItem.Click
        Me.Validate()
        Me.Transaction_FileBindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.TransactionFileDataSet)
    End Sub
    
    Private Sub Form6_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'StockDataSet.Stock' table. You can move, or remove it, as needed.
        Me.StockTableAdapter.Fill(Me.StockDataSet.Stock)
        'TODO: This line of code loads data into the 'TransactionFileDataSet.Transaction_File' table. You can move, or remove it, as needed.
        Me.Transaction_FileTableAdapter.Fill(Me.TransactionFileDataSet.Transaction_File)
    End Sub
    
    Private Sub btnTotal_Click(sender As Object, e As EventArgs) Handles btnTotal.Click
        TotalTextBox.Text = QuantityTextBox.Text * PriceTextBox.Text
    End Sub
    
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btnChange.Click
        ChangeTextBox.Text = Amount_ReceivedTextBox.Text - TotalTextBox.Text
    End Sub
    
    Private Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub
    
    Private Sub btnProcess_Click(sender As Object, e As EventArgs) Handles btnProcess.Click
        If Not DateDateTimePicker.Text = Date.Today Then
            MsgBox("Must enter current date!")
        End If

        If Item_CodeTextBox.Text = 1000 <> 1999 Then
            PriceTextBox.Text = "200.00"
        ElseIf Item_CodeTextBox.Text = 2000 <> 2999 Then
            PriceTextBox.Text = "800"
        ElseIf Item_CodeTextBox.Text = 300 <> 3999 Then
            PriceTextBox.Text = "5000"
        ElseIf Item_CodeTextBox.Text = 4000 <> 4999 Then
            PriceTextBox.Text = "3000"
        ElseIf Item_CodeTextBox.Text = 5000 <> 5999 Then
            PriceTextBox.Text = "500"
        ElseIf Item_CodeTextBox.Text = 6000 <> 6999 Then
            PriceTextBox.Text = "4000"
        ElseIf Item_CodeTextBox.Text = 7000 <> 7999 Then
            PriceTextBox.Text = "400"
        Else : MsgBox("Incorrect code!")
        
        End If
    
    End Sub
End Class