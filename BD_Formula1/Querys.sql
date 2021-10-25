USE formula1;

# 1)	O resultado final (posição de chegada, nome do piloto e tempo de prova) do GP de “Interlagos”:

	select r.posicao_chegada, pi.nome, r.tempo_corrido from resultados r 
		join pilotos pi on r.idPiloto = pi.idPiloto 
		where pi.idEquipe = 1 
		order by posicao_chegada;
	
# 2)	Qual o tempo da volta mais rápida do GP de “Mônaco”:

	select min(tempo) from voltas where idEquipe = 1;

#3)	Os nomes dos países e suas respectivas quantidades de pilotos, ordenados de forma decrescente pelas quantidades de pilotos:

	select p.nome , count(*) qtda from paises p 
    join pilotos pi on p.idPais = pi.IdPais 
    group by p.nome 
    order by qtda desc;

#4)	A classificação do Mundial de Construtores (nome da equipe e pontuação na temporada):

    select e.nome, sum(pontuacao) pts from resultados r 
    join pilotos pi on pi.idPiloto = r.idPiloto 
    join equipes e on e.idEquipe = pi.idEquipe 
    group by e.nome order by pts desc;
    
#5) Os nomes dos GPs que tiveram ao menos uma volta abaixo de 1 min e 30 seg: 

	select c.nome  from corridas c 
		join participantes p on p.idEquipe = c.idEquipe 
		join voltas v on v.idPiloto = p.idPiloto 
		where tempo < '1:30:00' 
		group by c.nome;    

#6)	O nome do piloto conseguiu o melhor tempo de volta em toda a temporada:

	select v.tempo, pi.nome from voltas v , pilotos pi 
    group by pi.nome, v.tempo 
    having v.tempo = (select max(v.tempo) from voltas );

#8) Nomes das equipes que possuem ao menos um piloto entre as três posições de alguma corrida: 

	select eq.nome from resultados r 
		join participantes p on p.idPiloto = r.idPiloto 
		join pilotos pi on pi.idPiloto = p.idPiloto 
		join equipes eq on eq.idEquipe = pi.idEquipe 
		where r.posicao_chegada = 1 or r.posicao_chegada = 2 or posicao_chegada = 3 
		group by eq.nome; 

# 9)	Nomes das equipes em que todos os pilotos pontuaram na temporada:

	select e.nome from resultados r 
		join participantes p on p.idPiloto = r.idPiloto 
        join pilotos pi on pi.idPiloto = p.idPiloto 
        join equipes e on e.idEquipe = pi.idEquipe 
        where r.pontuacao <> 0 
        group by e.nome; 

# 10) Nomes dos países e suas quantidades de pilotos, mas só daqueles que possuem corridas realizadas no país:

	select p.nome, count(*) qtda from paises p 
		join pilotos pi on p.idPais = pi.idPais 
		join corridas c on c.idPais = p.idPais
		where pi.idPais = c.idPais group by p.nome;
    
#11) Nomes dos pilotos que venceram corridas realizadas em seu próprio país: 

	select pi.nome from resultados r 
		join participantes p on p.idPiloto = r.idPiloto 
		join pilotos pi on pi.idPiloto = p.idPiloto 
		join paises pa on pa.idPais = pi.idPais 
		join corridas co on co.idPais = pa.idPais 
		where r.posicao_chegada = '01'and r.idEquipe = co.idEquipe and co.idPais = pi.idPais group by pi.nome;
        
#13) Nomes das equipes e suas quantidades de vitórias:

	select e.nome, count(posicao_chegada) qtd from resultados r 
		join pilotos pi on pi.idPiloto = r.idPiloto 
		join equipes e on e.idEquipe = pi.idEquipe 
		where r.posicao_chegada = '01' 
		group by e.nome order by qtd desc;


    
 
        

