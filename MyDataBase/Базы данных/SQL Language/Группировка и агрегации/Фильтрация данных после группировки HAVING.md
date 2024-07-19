Если нам нужно отфильтровать данные которые мы получили после расчетов в таблице, мы не можем использовать WHERE, нужно использовать другую команду - HAVING
Он идет после GROUP.

Пример:

```SQL
SELECT connection_area,
       AVG(age)
FROM buyer
WHERE company_marker = 0
GROUP BY connection_area
HAVING AVG(age) > 30;
```

## Особенности оператора `HAVING`
Условие, по которому оператор `HAVING` фильтрует данные, необязательно указывать в `SELECT`. Например, нужно отобразить зоны парка и максимальный возраст клиентов, которые подключались в них, но исключить те, где средний возраст меньше 30 лет. При этом сам средний возраст можно не выводить на экран.

```SQL
SELECT connection_area,
       MAX(age)
FROM buyer
WHERE company_marker = 0
GROUP BY connection_area
HAVING AVG(age) > 30;
```

