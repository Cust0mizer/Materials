По умолчанию оператор `ORDER BY` сортирует данные от меньшего к большему. 
Чтобы изменить порядок сортировки, после названия поля указывают ключевое слово `DESC`: тогда данные будут отсортированы по убыванию. Если указать `ASC`, данные будут отсортированы по возрастанию — так же, как и по умолчанию.


```SQL
SELECT connection_area,
       AVG(age)
FROM buyer
WHERE company_marker = 0
GROUP BY connection_area
ORDER BY AVG(age) DESC
LIMIT 5;
```
