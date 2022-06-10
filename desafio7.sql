/* Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma QUERY com as seguintes colunas:

A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".

A segunda coluna deve exibir o nome do álbum, com o alias "album".

A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "seguidores". Resposta: */

SELECT art.name AS 'artista',
alb.name AS 'album',
COUNT(seg.artist_id) AS 'seguidores'
FROM SpotifyClone.artist art
INNER JOIN SpotifyClone.album alb
ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.following_artist seg
ON art.artist_id = seg.artist_id
GROUP BY art.name, alb.name ORDER BY seguidores DESC, art.name, alb.name;