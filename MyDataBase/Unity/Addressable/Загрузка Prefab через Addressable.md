Есть 2 варианта, просто загрузить префаб и получить его, для дальнейшего использования или сразу загрузить и создать.
Первый вариант:
```csharp
        public async UniTask<AssetLoadResult<T>> LoadPrefab<T>(string path) {
            AsyncOperationHandle<T> asyncOperationHandle = Addressables.LoadAssetAsync<T>(path);
            T result = await asyncOperationHandle;
            AssetLoadResult<T> assetLoadResult = new AssetLoadResult<T>(result, asyncOperationHandle);
            return assetLoadResult;
        }
```

Второй вариант:
```csharp
        public async UniTask<T> InstancePrefab<T>(string path, Transform parent, Vector3 position, Quaternion rotation) where T : MonoBehaviour {
            InstantiationParameters parameters = new InstantiationParameters(position, rotation, parent);
            T result = await Addressables.InstantiateAsync(path, parameters).Task as T;
            return result;
        }
    //НЕ ТЕСТИЛ!
```
