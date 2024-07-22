-- Active: 1721612078307@@127.0.0.1@5432@medium
-- CREAR UNA VISTA

CREATE OR REPLACE view posts_claps_view AS
select posts.title, claps.counter as claps from posts INNER JOIN claps ON posts.post_id = claps.post_id;