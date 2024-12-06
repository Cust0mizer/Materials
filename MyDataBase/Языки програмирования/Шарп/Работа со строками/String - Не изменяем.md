Как я и говорил, строки не изменяемы, в этом есть небольшой плюс, так как мы можем выполнять операции над какой-либо строкой, не переживая за то, что эта строка измениться, и пользоваться ей дальше, как будто ничего мы не применяли к ней изменений (Ведь мы и не применяли, на самом деле)

```csharp
using EntryPoint;

namespace HomeworksStudent._00Lessons.StringLesson {
    public class StringEntryPoint : IEntryPoint {
        public void Start() {
            NoChangedExample();
        }

        public void NoChangedExample() {
            string noChangeExample = "Change";
            Console.WriteLine(noChangeExample);
            Console.WriteLine(noChangeExample.ToLower());
            Console.WriteLine(noChangeExample);
            Console.WriteLine(noChangeExample.ToUpper());
            Console.WriteLine(noChangeExample);
        }
    }
}
```

Тут на вывод получим:
```
Change
change
Change
CHANGE
Change 
```
Каждый раз, разная строка, но в тоже время основная не изменена. Но и тут стоит понимать что под все эти строки выделяется память, что приводит к срабатыванию сборщика мусора.
