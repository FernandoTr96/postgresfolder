-- tablas que una vez ejecutadas no realizan todos los procesos porque son virtuales en memoria
-- basicamente tener una consulta en memoria
-- la estructura despues del with se puede separar por comas y tener mas de 1 tabla en memoria

WITH post_claps as (
    select posts.title, claps.counter as claps from posts INNER JOIN claps ON posts.post_id = claps.post_id; -- tabla en memoria
) -- podria seguir usando otras tablas o queries

select * from post_claps;

-- usar cte en cosas recurisivas
WITH RECURSIVE countdown(val) as (
    select 5 as val 
    UNION
    select val - 1 from countdown where val > 1
)
select * from countdown