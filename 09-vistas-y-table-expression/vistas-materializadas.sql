-- Las vistas maeterialziadas copian los datos de la query asi como esten y no se actualizan
-- ocupan estapacio fisico en disco y son mas rapidas que una vista normal pero hay que estarla actualizando manualmente
-- se ocupan para tablas con muchos datos que no suelan cambiar tanto o que sus cambios no sean de alto impacto


CREATE MATERIALIZED view posts_claps_view_mat AS
select posts.title, claps.counter as claps from posts INNER JOIN claps ON posts.post_id = claps.post_id;

REFRESH MATERIALIZED view posts_claps_view_mat;
