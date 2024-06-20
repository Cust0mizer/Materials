Есть несколько удобных команд для работы с энамами в языке C#, такие как:
Преобразование значение энама в строку:

```Csharp
public class EnumWork {
    public void Test() {
        ConsoleKey consoleKey = ConsoleKey.None;
        string enumText = consoleKey.ToString();
    }

    private void EnumToString() {
        ConsoleKey consoleKey = ConsoleKey.None;
        string enumText = consoleKey.ToString();
    }

    private void StringToenum() {
        Enum.TryParse("Monday", out DayOfWeek result);
        //Тут, конечно, как и в работе со всеми строковыми значениями стоит быть осторожным, и внимательно всё записывать, иначе преобразование не получится.
    }

    private void EnumArray() {
        DayOfWeek[] days = (DayOfWeek[])Enum.GetValues(typeof(DayOfWeek));

        for (int i = 0; i < days.Length; i++) {
            Console.WriteLine(days[i]);
        }
    }

    private void CheckContainsValue() {
        if (Enum.IsDefined(typeof(DayOfWeek), 2)) {
            //Будет true - только если значение 2 есть в энаме
        }
    }
}
```

Примеры работы с энамами.