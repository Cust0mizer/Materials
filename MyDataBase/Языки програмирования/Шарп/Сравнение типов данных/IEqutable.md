`IEqutable<T>` где T, будет вашим типом данных, в этом интерфейсе будет метод `Equals(T other)`  куда вы как раз сможете передать свою структуру.
Как пример:

```csharp
    public struct Vector2 : IEquatable<Vector2> {
	public float x;
	public float y;
	
    public override bool Equals(object other) {
        if (other is Vector2 other2) {
            return Equals(other2);
        }

        return false;
    }

    public bool Equals(Vector2 other) {
        return x == other.x && y == other.y;
    }
}
```