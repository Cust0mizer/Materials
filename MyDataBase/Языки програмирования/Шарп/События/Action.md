Как уже и говорил, событие позволяет реагировать на какое-либо действие, но для начала среагируем на действие без событий:
```csharp
public class TestAction {
    private readonly SecondActionHandler _secondActionHandler;
    private readonly FirstActionHandler _firstActionHandler;

    public TestAction(FirstActionHandler firstActionHandler, SecondActionHandler secondActionHandler) {
        _firstActionHandler = firstActionHandler;
        _secondActionHandler = secondActionHandler;
    }

    public void NoAction() {
        Console.WriteLine("какой -то код");
        Console.WriteLine("Еще Какой-то код");
        Console.WriteLine("И еще");
        string actionMessage = "ActionMessage";
        _firstActionHandler.HandleAction(actionMessage);
        _secondActionHandler.HandleAction(actionMessage);
    }
}

public class FirstActionHandler {
    public void HandleAction(string actionMessage) {
        Console.WriteLine("Я обработал событие " + actionMessage + " первым споосбом");
    }
}

public class SecondActionHandler {
    public void HandleAction(string actionMessage) {
        Console.WriteLine("Я обработал событие " + actionMessage + " вторым споосбом");
    }
}
```
Таким образом мы среагируем на событие, и все на кого есть ссылка выполнят нужный код по своему, тут сразу видна проблема, нужно каждый раз прокидывать ссылку на того, кто будет обрабатывать события, но есть и альтернативный вариант:

```csharp
public class TestAction {
    public event Action<string> OnActionMessage;

    public void NoAction() {
        Console.WriteLine("какой -то код");
        Console.WriteLine("Еще Какой-то код");
        Console.WriteLine("И еще");
        string actionMessage = "ActionMessage";
        OnActionMessage?.Invoke(actionMessage);
    }
}

public class FirstActionHandler {
    public FirstActionHandler(TestAction testAction) {
        testAction.OnActionMessage += HandleAction;
    }

    public void HandleAction(string actionMessage) {
        Console.WriteLine("Я обработал событие " + actionMessage + " первым споосбом");
    }
}

public class SecondActionHandler {
    public SecondActionHandler(TestAction testAction) {
        testAction.OnActionMessage += HandleAction;
    }

    public void HandleAction(string actionMessage) {
        Console.WriteLine("Я обработал событие " + actionMessage + " вторым споосбом");
    }
}
```
Таким образом, при вызове `OnActionMessage` произойдет оповещение всех тех, кто подписался на данное событие, и не надо прокидывать на них ссылки, конечно тут надо прокинуть ссылки в классы обработчики, но и от этого можно избавиться отдельным классом который будет отвечать чисто за подписки.