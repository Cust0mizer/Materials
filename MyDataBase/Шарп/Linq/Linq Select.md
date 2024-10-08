Позволяет выбрать данные для дальнейшей работы, к примеру:

```Csharp
    public class LinqLessonStarter : IEntryPoint {
        public void Start() {
            List<Student> students = new List<Student>();

            for (int i = 0; i < 100; i++) {
                Random random = new Random();
                Group group = (Group)random.Next(0, 3);
                students.Add(new Student(random.Next(0, 100), random.Next(0, 100), group));
            }

            IEnumerable<int> mathBallResult = students.Select(student => student.MathBall);
        }
    }

    public class Student {
        public int MathBall { get; }
        public int RussianBall { get; }
        public Group Group { get; }

        public Student(int mathBall, int russianBall, Group group) {
            MathBall = mathBall;
            RussianBall = russianBall;
            Group = group;
        }
    }
```

Таким образом, не смотря на то, что изначально мы брали List<Student> students для дальнейшей работы мы выбрали их возраст, и можем уже работать с ним.
Ту так-же можно работать с анонимными классами, к примеру на основе класса студента мы можем создать анонимный класс и продолжить работу с ним:

```Csharp
            var result22 = students.Select(student => new { student.MathBall, student.Group });
```

Дальше мы будем работать с анонимным классом у которого будет 2 поля.

