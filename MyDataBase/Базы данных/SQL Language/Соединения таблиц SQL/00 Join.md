Join - Это оператор объединения данных из 2х таблиц и включения их в конечную результирующую таблицу.
Используется это в те моменты, когда данные в таблицах пересекаются к примеру у нас есть 2 таблицы, TRIP и COMPANY
![[Pasted image 20240721123850.png]]

В Trip - в поле company указаны id компаний, они же указаны в таблице Company, но на против каждого id стоит имя, таким образом мы можем запросить данные по id в таблице Trip, объединить запрос и получить имена вместо непонятных id.

```SQL
SELECT Company.name, Trip.plane
FROM Trip JOIN Company 
ON Trip.company = Company.id;
```

Есть разные способы подключения таблиц друг к другу:
[[INNEAR JOIN]]
[[LEFT JOIN или LEFT OUTER JOIN]]
[[RIGHT JOIN или RIGHT OUTER JOIN]]
[[OUTER JOIN или FULL JOIN]]