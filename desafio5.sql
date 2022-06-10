/* Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma QUERY que possua duas colunas:

A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.

A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão. Resposta: */

SELECT song.song_name AS 'cancao',
COUNT(historic.historic_id) AS 'reproducoes'
FROM SpotifyClone.song song
INNER JOIN SpotifyClone.historic historic
ON song.song_id = historic.song_id
GROUP BY cancao
ORDER BY reproducoes DESC,
cancao LIMIT 2;