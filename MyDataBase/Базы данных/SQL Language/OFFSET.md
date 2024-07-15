Позволяет отступить какое-то кол-во от начала, например:

SELECT last_name,
       gender,
       age,
       connection_area AS area,
       percent_of_discount AS discount
FROM buyer
LIMIT 7
OFFSET 9

