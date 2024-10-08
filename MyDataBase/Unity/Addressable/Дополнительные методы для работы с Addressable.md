```csharp
Addressables.GetDownloadSizeAsync("Key");
```
Возвращает размер контента, поможет в показе всяких прогрес баров.

Явный запуск инициализации Addressable:
```csharp
            await Addressables.InitializeAsync().Task;

```
Вообще это происходит автоматически, но возможно когда-то понадобиться.