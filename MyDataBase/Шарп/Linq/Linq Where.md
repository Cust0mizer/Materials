Команда которая позволяет сделать выборку по определенным условиям, к примеру мы можем выбрать все объекты которые больше или меньше определенного значения в листе, после выборки возвращает перечисление по условию.

```Csharp
    public class LinqLessonStarter : IEntryPoint {
        public void Start() {
            List<Student> students = new List<Student>();

            for (int i = 0; i < 100; i++) {
                Random random = new Random();
                students.Add(new Student(random.Next(0, 100), random.Next(0, 100)));
            }

            IEnumerable<Student> result = students.Where(student => student.RussianBall > 50);
        }
    }
    
    public class Student {
        public int MathBall { get; }
        public int RussianBall { get; }

        public Student(int mathBall, int russianBall) {
            MathBall = mathBall;
            RussianBall = russianBall;
        }
    }
```

Тут я сначала заполняю лист со сдудентами 100 рандомными значениями, а после нахожу все чей бал больше 50 и выношу их в отдельную коллекцию