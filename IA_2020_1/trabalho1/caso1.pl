%Base de conhecimento
problema(preparador_fisico):-ruim(preparo_fisico).
problema(equipe_tecnica):-constantes(atritos),ruim(situacao_psicologica).
problema(time):-bom(preparo_fisico),ruim(situacao_de_gols).
problema(insatisfacao_financeira):-constantes(atritos),atrasado(salarios).
constantes(atritos):-jogador(X),tecnico(P),discute(X,P),X \== P.
constantes(atritos):-jogador(X),jogador(Y),discute(X,Y),X \== Y.
ruim(situacao_psicologica):-jogador(X),suspenso(X).
ruim(situacao_de_gols):-gols_sofridos(X),gols_feitos(Y),X > Y.
suspenso(X):-cartao_vermelho(X).
ruim(preparo_fisico):-jogador(X),lento(X).
ruim(preparo_fisico):-jogador(X),lesao(X).

% Fatos:
bom(preparo_fisico).
jogador(jorge).
cartao_vermelho(jorge).
tecnico(p).
discute(jorge,p).
gols_sofridos(1).
gols_feitos(2).
atrasado(salarios).
lento(nenhum).
lesao(nenhum).
%R: equipe tenica e insatisfacao financeira
