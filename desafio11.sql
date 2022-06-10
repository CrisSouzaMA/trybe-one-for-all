/* Crie uma QUERY que altere o nome de algumas músicas e as ordene em ordem alfabética com as colunas abaixo se baseando nos seguintes critérios:

O nome da música em seu estado normal com o alias nome_musica

O nome da música atualizado com o alias novo_nome

Critérios

Trocar a palavra "Streets" no final do nome de uma música por "Code Review"

Trocar a palavra "Her Own" no final do nome de uma música por "Trybe"

Trocar a palavra "Inner Fire" no final do nome de uma música por "Project"

Trocar a palavra "Silly" no final do nome de uma música por "Nice"

Trocar a palavra "Circus" no final do nome de uma música por "Pull Request". Resposta: */

SELECT song.song_name AS nome_musica,
CASE
  WHEN song.song_name LIKE '%Streets' THEN REPLACE(song.song_name, 'Streets', 'Code Review')
  WHEN song.song_name LIKE '%Her Own' THEN REPLACE(song.song_name, 'Her Own', 'Trybe')
  WHEN song.song_name LIKE '%Inner Fire' THEN REPLACE(song.song_name, 'Inner Fire', 'Project')
  WHEN song.song_name LIKE '%Silly' THEN REPLACE(song.song_name, 'Silly', 'Nice')
  WHEN song.song_name LIKE '%Circus' THEN REPLACE(song.song_name, 'Circus', 'Pull Request')
  END AS novo_nome FROM SpotifyClone.song song 
  WHERE song.song_name LIKE '%Streets%'
  OR song.song_name LIKE '%Her Own%'
  OR song.song_name LIKE '%Inner Fire%'
  OR song.song_name LIKE '%Silly%'
  OR song.song_name LIKE '%Circus%'
  ORDER BY nome_musica;