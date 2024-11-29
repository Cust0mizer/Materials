Вспомним что у нас есть 2 класса, и мы хотим преоброзовать один в другой.

```csharp
using EntryPoint;

namespace HomeworksStudent._00Lessons.Convertation {
    public class ConvertationStarter : IEntryPoint {
        private void ThirdExample() {
            FirstClass firstClass = new FirstClass();
            SecondClass secondClass = (SecondClass)firstClass;
        }
    }

    public class FirstClass {

    }

    public class SecondClass {

    }
}
```
Для такого преоброзования, в `SecondClass` нужно объявить конструктор, который будет принимать `FirstClass` и инициализировать `SecondClass`  в соответствии с параметрами   `FirstClass`
После чего в первом классе, нужно объявить специальный метод:
`public static explicit operator ТипВозвращаемогоОбъекта(ПринимаемыеПараметры)`
В итоге у нас получается следующее.

```csharp
using EntryPoint;

namespace HomeworksStudent._00Lessons.Convertation {
    public class ConvertationStarter : IEntryPoint {
        private void ThirdExample() {
            FirstClass firstClass = new FirstClass();
            SecondClass secondClass = (SecondClass)firstClass;
        }
    }

    public class FirstClass {
        public static explicit operator SecondClass(FirstClass secondClass) {
            return new SecondClass(secondClass);
        }
    }

    public class SecondClass {
        public SecondClass(FirstClass secondClass) {

        }
    }
}
```
Теперь наш код не выводит ошибок, и `FirstClass` превращается в `SecondClass`

Точно таким-же способом мы можем передать туда любые типы данных и вернуть от туда так-же любые.