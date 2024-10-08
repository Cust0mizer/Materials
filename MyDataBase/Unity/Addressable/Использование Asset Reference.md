Представим ситуацию когда мы хотим создавать какой-то объект внутри другого объекта, ну к примере в главном меню у нас есть меню паузы, как часто игрок будет на него нажимать? Думаю не очень, но в тоже время там может быть достаточно большое кол-во картинок, что так-же загрузит оперативную память. Что делать? Можно конечно загружать нужное меню через подход который был разобран раньше (вставить ссылку на то, как грузить), а можно воспользоваться Asset Reference, по факту это очень похоже на установку обычного сериализовоного объекта в юнити инспекторе, пример:

```csharp
    public class MenuManager : MonoBehaviour {
        [SerializeField] private AssetReference mainLayoutPrefab;
        [SerializeField] private AssetReference itemsLayoutPrefab;
        [SerializeField] private Transform parent;
        private MainLayout mainLayout;
        private ItemsLayout itemsLayout;

        private void Start() {
            OpenMainLayout();
        }

        private void OnDisable() {
            mainLayout.openItems -= OpenItemsLayout;

            if (null != itemsLayout) {
                itemsLayout.Close -= OpenMainLayout;
            }
        }

        private async void OpenItemsLayout() {
            if (null == itemsLayout) {
                var goPrefab = await Addressables.InstantiateAsync(itemsLayoutPrefab, parent).Task;

                itemsLayout = goPrefab.GetComponent<ItemsLayout>();
                itemsLayout.Close += OpenMainLayout;
            }

            itemsLayout.gameObject.SetActive(true);
            mainLayout.gameObject.SetActive(false);
        }

        private async void OpenMainLayout() {
            if (null == mainLayout) {
                var goPrefab = await Addressables.InstantiateAsync(mainLayoutPrefab, parent).Task;

                mainLayout = goPrefab.GetComponent<MainLayout>();
                mainLayout.openItems += OpenItemsLayout;
            }

            mainLayout.gameObject.SetActive(true);

            if (null != itemsLayout) {
                itemsLayout.gameObject.SetActive(false);
            }
        }
    }
```
Тут при старте мы загружаем объект не через путь до него, а через ссылки, которые мы указали в инспекторе:
![[Pasted image 20241008181508.png]]
Сами объекты которые мы туда закидываем должны быть Addressable, а так-же префабамми, за этим стоит следить, а то может выдать ошибку, этого можно избежать и ставить ограничения на нужный тип
Разобрать кейс с 36 минуты