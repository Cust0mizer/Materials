Позволяет отступить какое-то кол-во от начала, например:


```SQL
SELECT last_name,
gender,
age,
connection_area AS area,
percent_of_discount AS discount 
FROM buyer 
LIMIT 7 
OFFSET 9
```


Отступит первые 9 записей и выведет 7, получается будет выведены все записи с 10 по 16
Или

> SELECT *
> FROM buyer
> OFFSET 169

Начнет вывод с 170й строки, так как 169 он пропустил

