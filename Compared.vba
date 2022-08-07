Private Sub CommandButton1_Click()
    Columns("M:M").ClearContents
    Set regx = CreateObject("vbscript.regexp")
    regx.Global = True
    regx.Pattern = "\s+|\r|\n|\r\n|\d+"
    For i = 1 To Worksheets(1).UsedRange.Rows.Count
        For j = 1 To Worksheets(1).UsedRange.Rows.Count
            If Cells(i, "K").Value = Cells(j, "B") Then
                If regx.Replace(Cells(i, "L").Value, "") = regx.Replace(Cells(j, "C").Value, "") Then
                    Cells(i, "M").Value = "√"
                    Exit For
                End If
            End If
        Next j
    Next i
End Sub