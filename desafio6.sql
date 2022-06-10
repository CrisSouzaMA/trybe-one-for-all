/* Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma QUERY que deve exibir quatro dados:

A primeira coluna deve ter o alias "faturamento_minimo" e exibir o menor valor de plano existente para uma pessoa usuária.

A segunda coluna deve ter o alias "faturamento_maximo" e exibir o maior valor de plano existente para uma pessoa usuária.

A terceira coluna deve ter o alias "faturamento_medio" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.

Por fim, a quarta coluna deve ter o alias "faturamento_total" e exibir o valor total obtido com os planos possuídos por pessuas usuárias. Resposta: */

SELECT MIN(plan.plan_value) AS 'faturamento_minimo',
MAX(plan.plan_value) AS 'faturamento_maximo',
ROUND(AVG(plan.plan_value),2) AS 'faturamento_medio',
ROUND(SUM(plan.plan_value),2) AS 'faturamento_total'
FROM SpotifyClone.plan plan
INNER JOIN SpotifyClone.user users
ON users.plan_id = plan.plan_id;