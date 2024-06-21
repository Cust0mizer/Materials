Switch case – Гораздо удобнее для множественных проверок на совпадение особенно при использовании [[Enum]].

В c# - Есть стандартный [[Enum]], для представления дня недели, что это такое поговорим позже, а пока просто воспользуемся им.
```CSharp
private static void ChangeDay(DayOfWeek dayOfWeek) {
    switch (dayOfWeek) {
        case DayOfWeek.Sunday:/*Код пишут тут*/ break;
        case DayOfWeek.Monday:/*Код пишут тут*/break;
        case DayOfWeek.Tuesday:/*Код пишут тут*/break;
        case DayOfWeek.Wednesday:/*Код пишут тут*/break;
        case DayOfWeek.Thursday:/*Код пишут тут*/break;
        case DayOfWeek.Friday:/*Код пишут тут*/break;
        case DayOfWeek.Saturday:/*Код пишут тут*/break;
        default:/*Код пишут тут*/break;
    }
}
```
Тут мы выбираем текущую дату и отправляем её в свитч, и при определённом дне, у нас будет выполняться определённый код который мы пропишем в указанном месте.

**Default** - используется как Else - В [[If, else if, else]], то есть этот блок выполнится в любом случае и как в [[If, else if, else]] он не является обязательным.

Пример с использованием Or - || - ИЛИ
```Csharp
private static void ChangeDay(DayOfWeek dayOfWeek) {
    switch (dayOfWeek) {
        case DayOfWeek.Sunday or DayOfWeek.Monday:/*Код пишут тут*/ break;
    }
}
```

Пример с использованием And - && - И
```Csharp
private static void ChangeValue(int value) {
    switch (value) {
        case >2 and <10:/*Код пишут тут*/ break;
    }
}
```
