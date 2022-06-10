/* Mostre uma relação dos álbuns produzidos por um artista específico, neste caso "Walter Phoenix". Para isto crie uma QUERY que o retorno deve exibir as seguintes colunas:

O nome da pessoa artista, com o alias "artista".

O nome do álbum, com o alias "album". Resposta: */

SELECT art.name AS 'artista',
alb.name AS 'album'
FROM SpotifyClone.artist art
INNER JOIN SpotifyClone.album alb
ON art.artist_id = alb.artist_id
WHERE art.name = 'Walter Phoenix'
ORDER BY album;