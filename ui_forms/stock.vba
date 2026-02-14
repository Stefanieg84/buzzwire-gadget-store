Public Class Form5
    
    Private Sub StockBindingNavigatorSaveItem_Click(sender As Object, e As EventArgs) Handles StockBindingNavigatorSaveItem.Click
        Me.Validate()
        Me.StockBindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.StockDataSet)
    End Sub

    Private Sub Form5_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'StockDataSet.Stock' table. You can move, or remove it, as needed.
        Me.StockTableAdapter.Fill(Me.StockDataSet.Stock)
    End Sub

    Private Sub btnSellingPrice_Click(sender As Object, e As EventArgs)
        Selling_PriceTextBox.Text = QuantityTextBox.Text * Cost_PriceTextBox.Text
    End Sub

    Private Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Item_CodeTextBox.Text = 1000 <> 1999 Then
            Selling_PriceTextBox.Text = "200"
            Cost_PriceTextBox.Text = "300"
        ElseIf Item_CodeTextBox.Text = 2000 <> 2999 Then
            Selling_PriceTextBox.Text = "800"
            Cost_PriceTextBox.Text = "600"
        ElseIf Item_CodeTextBox.Text = 300 <> 3999 Then
            Selling_PriceTextBox.Text = "5000"
            Cost_PriceTextBox.Text = "3000"
        ElseIf Item_CodeTextBox.Text = 4000 <> 4999 Then
            Selling_PriceTextBox.Text = "3000"
            Cost_PriceTextBox.Text = "1500"
        ElseIf Item_CodeTextBox.Text = 5000 <> 5999 Then
            Selling_PriceTextBox.Text = "500"
            Cost_PriceTextBox.Text = "300"
        ElseIf Item_CodeTextBox.Text = 6000 <> 6999 Then
            Selling_PriceTextBox.Text = "4000"
            Cost_PriceTextBox.Text = "1000"
        ElseIf Item_CodeTextBox.Text = 7000 <> 7999 Then
            Selling_PriceTextBox.Text = "400"
            Cost_PriceTextBox.Text = "200"
        Else : MsgBox("Incorrect code!")
        End If

    End Sub

End Class