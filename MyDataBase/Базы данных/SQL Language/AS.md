Позволяет задать имя какому либо столбцу, который мы получили. Например:

SELECT bracelet_id AS id,
       last_name AS name_client,
       percent_of_discount AS discuount
FROM buyer

Мы получим столбцы не с теми именами которые мы запрашивали, а с теми что мы переприсвоили.