Это более новый вариант не явной типизации, он немного более функциональнее, в частности с его помощью можно создавать поля в классе.
К примеру:

```csharp
    public class TestNewClass {
        private Dictionary<int, string> _dictionaryTest = new();
        private CancellationToken _cancellationToken = new();
    }
```
Но его не получится использовать для создания примитивных типов данных, таких как `int` или `bool`, если конечно не использовать [[Типы данных.|FCL типы данных]].