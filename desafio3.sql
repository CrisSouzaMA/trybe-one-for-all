/* Crie uma QUERY que deverá ter apenas três colunas:

A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.

A segunda coluna deve possuir o alias "qtde_musicas_ouvidas" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.

A terceira coluna deve possuir o alias "total_minutos" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução. Resposta: */

SELECT users.`name` AS usuario,
COUNT(song.song_id) AS 'qtde_musicas_ouvidas',
ROUND(SUM(song.song_duration / 60), 2) AS 'total_minutos'
FROM SpotifyClone.user users
INNER JOIN SpotifyClone.historic historic
ON users.user_id = historic.user_id
INNER JOIN SpotifyClone.song song
ON song.song_id = historic.song_id
GROUP BY usuario
ORDER BY usuario;