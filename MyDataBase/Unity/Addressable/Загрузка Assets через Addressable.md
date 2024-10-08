Пример загрузки спрайтов:

```Csharp
        public async UniTask<Sprite> LoadSprite(string path, ExtensionType extensionType) {
            path = $"{path}.{extensionType}";
            Sprite sprite = await Addressables.LoadAssetAsync<Sprite>(path);
            return sprite;
        }
```

По факту это очень похоже на загрузку из папки ресурсов, с небольшими отличиями, тут у нас асинхронная операция, поэтому лучше всего использовать юнитаски, вот пример получения из этого кода спрайта:

```CsHarp
    public class ExampleLoadSprite {
        public async UniTaskVoid ExampleMethod() {
            AddressableLoaderService addressableLoaderService = new AddressableLoaderService();
            Sprite result = await addressableLoaderService.LoadSprite("Path", ExtensionType.Jpg);
            //Полученый спрайт можно присвоить куда либо
        }
    }
```

Пример загрузки большого кол-ва спрайтов, тут нет юнитаска.
![[Pasted image 20241007225330.png]]

