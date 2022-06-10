/* Crie uma QUERY que exiba três colunas:

A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".

A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".

A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns". Resposta: */

SELECT COUNT(*) AS 'cancoes',
  (SELECT COUNT(*) FROM SpotifyClone.artist) AS 'artistas',
  (SELECT COUNT(*) FROM SpotifyClone.album) AS 'albuns'
FROM SpotifyClone.song; 