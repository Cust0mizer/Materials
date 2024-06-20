Первое что надо понимать, так это то, что пользоваться им можно только во встроенном методе:
```Csharp
    private void OnDrawGizmos() {

    }
```

Который есть только на монобехе.

```Csharp
using UnityEngine;

public class DrawTest : MonoBehaviour {
    private void OnDrawGizmos() {
        Gizmos.color = Color.green;
        //Изменяет цвет гизмоса, теперь все что будет выводиться, будет зеленым цветом.
        DrawSphere();
        DrawRay();
        DrawLine();
        DrawCube();
    }

    private void DrawSphere() {
        Vector3 centerPosition = Vector3.zero;
        float radius = 0.5f;
        Gizmos.DrawSphere(centerPosition, radius);
        //Пример отображения сферы, при изменении CenterPosition - она будет смещаться.
    }

    private void DrawRay() {
        Vector3 startPosition = Vector3.zero;
        Vector3 direction = Vector3.up;
        float rayLength = 10;
        Gizmos.DrawRay(startPosition, direction * rayLength);
        //Пример отображения луча, как и при создании обычного луча, он имеет старт и направление, если умножать направление на вележину, то луч будет длинее
    }

    private void DrawLine() {
        Vector3 startPosition = Vector3.zero;
        Vector3 endPosition = Vector3.up;
        Gizmos.DrawLine(startPosition, endPosition);
        //Пример отображения линии, чем-то похож на луч, но он рисует отрезок от первой точки до второй
    }

    private void DrawCube() {
        Vector3 centerPosition = Vector3.zero;
        Vector3 size = Vector3.up;
        Gizmos.DrawCube(centerPosition, size);
        //Рисует куб, тоже самое что и сфера, но куб.
    }
}
```

Основные методы отрисовки, стоит понимать что есть еще похожие методы, типо DrawWireSphere и тд, они тоже рисуют 3д сферу или то что написано, но если обычный метод закрашивает внутри сферу, то этот оставляет пустое пространство.

Обычная сфера:
![[Pasted image 20240616145852.png#center]]
Сфера через Wire
![[Pasted image 20240616145947.png#center]]