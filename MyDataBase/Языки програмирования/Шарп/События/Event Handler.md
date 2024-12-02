Этот тип события позволяет помимо объекта отправителя, создать дополнительные данные и отправить их все вместе, но для начала нужно разобраться с типом `EventArgs`.
`EventArgs` - По своей сути базовый класс для всех классов, которые мы хотим отправить с помощью `EventHandler`
К примеру мы хотим отправить дополнительно данные, такие как сообщение, то нам нужно объявить отдельный класс, который будет хранить наше сообщение, а сам класс унаследовать от класса `EventHandler`

```csharp
public class MyEventArgs : EventArgs {
    private readonly string _message;

    public MyEventArgs(string message) {
        _message = message;
    }

    public string Message => _message;
}
```
По соглашению, название такого класса должно заканчиваться на EventArgs.
Дальше как в примере с [[Action]] нужно объявить класс, который будет содержать наше событие.
```csharp
public class MailManager {
    public event EventHandler<MyEventArgs> OnArgs;
    public Action Action;

    public void StartMail(string text) {
        OnArgs?.Invoke(this, new MyEventArgs(text));
    }
}
```

И дальше в классах обработчиках просто получить это сообщение и обработать по своему.
```csharp
public class Pager {
    public Pager(MailManager mailManager) {
        mailManager.OnArgs += UpdateState;
    }

    private void UpdateState(object? sender, MyEventArgs e) {
        Console.WriteLine(e.Message);
    }
}
```
Так как тут дополнительно мы знаем об объекте который отправил событие, мы можем работать с ним после [[Приведение объектов друг к другу с помощью наследования и реализации интерфейсов, использование операторов Is и As|Приведения типов]]