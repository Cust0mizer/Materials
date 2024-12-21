Базовый синтаксис и команды
```vb
Module Module1
    Sub Main()
        Dim strName As New MyTestClass
        strName.TestInput()
        strName.PrintInfo()
        strName.ForTest()
        strName.ArrayTest()
        strName.TestEnum([Group].M41)
    End Sub
End Module

Class MyTestClass
    Public Color As String = "Red"

    Public Sub PrintInfo()
        Console.WriteLine(Color)
    End Sub

    Public Sub ForTest()
        For index = 0 To 9
            Console.WriteLine(index)
        Next
    End Sub

    Public Sub ArrayTest()
        Dim intValue As Integer = 123
        Dim MyArray(10) As Integer

        For index = 0 To MyArray.Length Step 1
            Console.WriteLine(MyArray(index))
        Next
    End Sub

    Public Sub TestEnum(group As Group)
        Select Case group
            Case [Group].M31
                Console.WriteLine("Bul")
            Case [Group].M41
                Console.WriteLine("Men")
        End Select
    End Sub

    Sub TestInput()
        Dim intValue = Val(Console.ReadLine())
        Console.WriteLine($"You input = {intValue}")
    End Sub
End Class

Enum Group
    M31
    M41
End Enum
```

![[fb4c40a8fda5103dadf61f099a908a05.pdf]]

![[48d73f4ac6597c27a9e01d04a2a55378.pdf]]

![[6276ff1fcfdd545b8596f6dbb8c5b62d.pdf]]

![[6be86d07c4013323da551ead7c6d150d.pdf]]

![[4612559c4b1c464e39a323a1f2710278.pdf]]

![[078e0b854ca95ac726919771d93be731.pdf]]