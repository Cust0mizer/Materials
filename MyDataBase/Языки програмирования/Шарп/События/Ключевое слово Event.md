При объявлении события как поля класса, часто используют ключевое слово `Event`, к примеру:

```csharp
public class MailManager {
    public event EventHandler<MyEventArgs> OnArgs;
    public event Action Action;

    public void StartMail(string text) {
        OnArgs?.Invoke(this, new MyEventArgs(text));
    }
}
```
Но, что будет если его не объявлять? Вообще ничего, мы не получим ошибку компиляции в этом классе.
```csharp
public class MailManager {
    public EventHandler<MyEventArgs> OnArgs;
    public Action Action;

    public void StartMail(string text) {
        OnArgs?.Invoke(this, new MyEventArgs(text));
    }
}
```
Но, в тоже время мы разрешим другим классам, вызывать это событие через `Invoke`, чего нельзя сделать если ключевое слово `event` используется. 
