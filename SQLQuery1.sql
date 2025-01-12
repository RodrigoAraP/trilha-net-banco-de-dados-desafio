-- 1 - Buscar o nome e ano dos filmes

select Nome, Ano from Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select * from Filmes
order by ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

select Nome, Ano, Duracao from Filmes
where Nome like 'De Volta%'

-- 4 - Buscar os filmes lançados em 1997

select * from Filmes
where Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

select * from Filmes
where Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

select * from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

select ano, COUNT(Ano) Quantidade from Filmes
group by ano
order by Quantidade desc


-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome


select PrimeiroNome, UltimoNome from Atores
where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

select PrimeiroNome, UltimoNome from Atores
where Genero = 'F'
order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

select F.Nome, G.Genero from Filmes F
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on G.Id = FG.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

select F.Nome, g.Genero from Filmes F
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on G.Id = FG.IdGenero
where g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select F.Nome Filme, A.PrimeiroNome + ' ' + A.UltimoNome NomeCompleto, EF.Papel from Filmes F
inner join ElencoFilme EF on F.Id = EF.IdFilme
inner join Atores A on A.Id = EF.IdAtor