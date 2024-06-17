Этот цикл считается самым удобным для работы с коллекциями.

К примеру, для перебора многомерного массива, нам не потребуется брать его длину каждый раз, а просто можно перебрать элементы.

Пример перебора с помощью цикла Foreach
```Csharp
internal class Program {
    static void Main(string[] args) {
        int[] arrayValues = new int[] { 1, 2, 3, 4, 5, 6, 7, 8132, 645, 123 };

        foreach (int value in arrayValues) {
            Console.WriteLine(value);
        }
    }
}
```

Вот так выглядит этот перебор, тут мы записываем цикл Foreach, а в скобках указываем тип данных коллекции, которую мы подвергаем перебору, дальше создаем переменную, эта переменная будет представлять собой данные из коллекции, и говорим какую коллекцию мы хотим подвергнуть обработке строкой in array

Пример того, как вышеуказанный цикл Foreach будет выглядеть но уже в цикле For.
```Csharp
internal class Program {
    static void Main(string[] args) {
        int[] arrayValues = new int[] { 1, 2, 3, 4, 5, 6, 7, 8132, 645, 123 };

        for (int index = 0; index < arrayValues.Length; index++) {
            int value = arrayValues[index];
            Console.WriteLine(value);
        }
    }
}
```

В цикле foreach - нельзя изменять элементы, мы может только считать их.
```Csharp
internal class Program {
    static void Main(string[] args) {
        int[] arrayValues = new int[] { 1, 2, 3, 4, 5, 6, 7, 8132, 645, 123 };

        foreach (int value in arrayValues) {
            value = 123; //Работать не будет!
        }
    }
}
```
