Позволяет получить конкретную часть даты, год, месяц, минуту и тд.

EXTRACT(отрезок времени FROM поле)

Тут уже кавычки не нужны, но тут есть свои поля названия временных отрезков.


| CENTURY    | Век                                                    |
| ---------- | ------------------------------------------------------ |
| YEAR       | Год                                                    |
| QUARTER    | Квартал                                                |
| MONTH      | Месяц                                                  |
| WEEK       | Неделя в году                                          |
| DAY        | День                                                   |
| DOY        | День числом от 1 до 365 или 366                        |
| DOW        | День недели где 1 - это Понедельник, а 0 - Воскресенье |
| ISODOW     | День недели где 1 - это Понедельник, а 7 - Воскресенье |
| HOUR       | Час                                                    |
| MINUTE     | Минута                                                 |
| SECOND     | Секунда                                                |
| MILISECODN | Милисекунда                                            |




SELECT 
MAX(price * quantity),
bracelet_id
FROM pizza
WHERE EXTRACT(WEEK FROM date) = 3
GROUP BY bracelet_id
ORDER BY  MAX(price * quantity) DESC
LIMIT 3