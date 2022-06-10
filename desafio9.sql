/* Crie uma QUERY que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico do usuário "Bill" e a consulta deve retornar a seguinte coluna:

O valor da quantidade, com o alias "quantidade_musicas_no_historico". Resposta: */

SELECT COUNT(historic.historic_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historic historic 
WHERE historic.user_id = '3';