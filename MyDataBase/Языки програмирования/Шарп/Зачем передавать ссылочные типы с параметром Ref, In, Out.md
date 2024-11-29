Для понимания этих параметров следует почитать - [[00 Передача параметров в метод по ссылке|это]]
А делать это стоит для того, что-бы отложить создания ссылки на объект, изменить ее каким либо образом или запретить изменение. К примеру:

```csharp
    public class TestNewClass {
        public void OutClassTest() {
            SecondClass secondClass;
            OutTest(out secondClass);
        }

        public void OutTest(out SecondClass secondClass) {
            secondClass = new SecondClass();
        }
    }
```
Как видно, нам удалось передать `SecondClass` в метод не смотря на то, что он null, без параметра `out` у нас бы не получилось это сделать
