Первым делом нам потребуется скачать векторное изображение и перевести его в формат txt
Пример такого изображения.
![[Pasted image 20240615180411.png#center]]

Дальше мы должны через StringReader загрузить наше изображение, импортировать его в SVG формат, получить геометрию изображения и установить в спрайт.

```Csharp
public class VectorImageInstance : MonoBehaviour {
    [SerializeField] private TextAsset _svgFile; //Тут лежит мой текстовый файл
    [SerializeField] private SpriteRenderer _spriteRenderer;

    private void Start() {
        StringReader stringReader = new StringReader(_svgFile.text);
        SceneInfo sceneInfo = ImportSVG(stringReader);

        TessellationOptions tessellationOptions = new TessellationOptions() {
            StepDistance = 1.0f,
            MaxCordDeviation = 0.5f,
            MaxTanAngleDeviation = 0.1f,
            SamplingStepSize = 0.01f
        };

        List<Geometry> geometry = TessellateScene(sceneInfo.Scene, tessellationOptions);
        Sprite sprite = BuildSprite(geometry, 100.0f, Alignment.Center, Vector2.zero, 128, true);
        _spriteRenderer.sprite = sprite;
    }
}
```
==TessellationOptions== - определяет параметры тесселяции, которые используются при преобразовании SVG-сцен в геометрические данные, подходящие для рендеринга в Unity. Эти параметры влияют на качество и производительность отображения SVG-изображений
==**StepDistance**== - Определяет кол-во треугольников, чем больше значение тем меньше. Но изображение менее качественное.
==**MaxCordDeviation** и **MaxTanAngleDeviation**== - Влияют на точность линий и возможное отклонение от идеального угла изображения.
==**SamplingStepSize**== - Так-же влияет на кол-во треугольников, чем меньше - тем больше.

==**Geometry**== - Хранит информацию о геометрии линий, точки по которым они строятся и тд.




