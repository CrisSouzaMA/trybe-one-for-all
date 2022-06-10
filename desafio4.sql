/* Crie uma QUERY que deve mostrar as pessoas usuárias que estavam ativas no ano de 2021 se baseando na data mais recente no histórico de reprodução.

A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.

A segunda coluna deve ter o alias "condicao_usuario" e exibir se a pessoa usuária está ativa ou inativa. Resposta: */

SELECT users.`name` AS usuario,
IF(MAX(YEAR(reproduction_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.user users
INNER JOIN SpotifyClone.historic historic
ON users.user_id = historic.user_id
GROUP BY usuario
ORDER BY usuario;