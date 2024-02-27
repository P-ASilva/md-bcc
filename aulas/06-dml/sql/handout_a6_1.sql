USE torneio;

select * from jogador;

update jogador
set equipe = "É nois!"
where nome = "Rafael Montaigner";

DELETE from jogador
where preferencia = 1;