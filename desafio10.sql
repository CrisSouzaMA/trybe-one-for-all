/* Crie uma QUERY que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano gratuito ou pessoal, de acordo com os detalhes a seguir:

A primeira coluna deve exibir o nome da canção, com o alias "nome";

A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "reproducoes". Resposta: */

SELECT song.song_name AS 'nome',
COUNT(historic.user_id) AS 'reproducoes'
FROM SpotifyClone.song song
INNER JOIN SpotifyClone.historic historic
ON song.song_id = historic.song_id
INNER JOIN SpotifyClone.user users
ON users.user_id = historic.user_id
INNER JOIN SpotifyClone.plan plan
ON plan.plan_id = users.plan_id
WHERE plan.type = 'gratuito' OR plan.type = 'pessoal'
GROUP BY nome
ORDER BY nome;