Attribute VB_Name = "Module1"
Sub test()

Dim ws As Worksheet
Dim nr, i As Integer
Dim str As String

Set ws = ActiveWorkbook.Worksheets("SYCL")

nr = ws.UsedRange.SpecialCells(xlCellTypeLastCell).Row

For i = 75 To nr

str = ws.Range("A" & i).Value2

If str <> "" And Left(str, 9) = "Projects/" Then

If Right(str, 2) <> "/1" Then

ws.Rows(i & ":" & i).Select
Selection.Delete Shift:=xlUp

End If

End If

Next i

End Sub
