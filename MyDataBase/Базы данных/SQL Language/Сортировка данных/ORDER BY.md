Для сортировки данных в SQL используют оператор `ORDER BY`. Его пишут в самом конце запроса, после него можно указать только операторы [[LIMIT]] и [[OFFSET]].

Пример сортировки по среднему возрасту
```SQL
SELECT connection_area,
       AVG(age)
FROM buyer
WHERE company_marker = 0
GROUP BY connection_area
ORDER BY AVG(age);
```

[[Изменение порядка сортировки]]