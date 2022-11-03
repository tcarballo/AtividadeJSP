-- Cria Perfis
insert into user_perfil (nome_perfil)
values ('Moderador'),('Usuário Comum');

-- Cria Usuário Moderador
insert into user (user_name, email, senha, id_perfil)
values ('Moderador','moderador@email.com.br','senha1234', 1 );

-- Adiciona Postagens
insert into postagens(titulo,data_postagem,postagem)
values ('Vamos chamar a Copa do Mundo do Catar pelo que realmente é','2022-05-23','Em novembro, bilhões de pessoas em todo o mundo vão sintonizar a Copa do Mundo — um dos maiores espetáculos esportivos da história da humanidade. É um evento que paralisou as guerras, canonizou santos e pecadores do esporte e uniu o planeta para saborear cada gol de ponto de exclamação, desarme de última hora e joelhada comemorativa intrincadamente coreografada.
Há apenas um problema: este ano, está acontecendo no Catar.
No Catar, jornalistas são presos por investigarem as condições dos trabalhadores migrantes. Pessoas LGBTQ+ são tratadas como criminosas. As mulheres precisam pedir permissão aos homens para se casar, viajar e estudar no exterior em muitos casos.
E as práticas trabalhistas do Catar foram comparadas à escravidão moderna — 6.500 trabalhadores migrantes do sul da Ásia morreram no Catar desde que o país foi premiado com a Copa do Mundo em 2010. Especialistas dizem ser provável que muitas dessas mortes estejam relacionadas à construção de edifícios para o torneio.
Seis mil e quinhentas mortes — pelo menos. O número total de mortos é quase certamente maior, pois esse número não inclui muitos países que enviam trabalhadores para o Catar, incluindo as Filipinas e nações africanas.
O Catar argumenta que a taxa de mortalidade para sua comunidade de trabalhadores migrantes está dentro da faixa esperada para o tamanho e a demografia da população.
Nos últimos anos, as autoridades do Catar introduziram “várias iniciativas promissoras de reforma trabalhista”, segundo a Human Rights Watch. Mas, “lacunas significativas permanecem”, disse, incluindo “abusos salariais generalizados” e falha em “investigar as causas das mortes de milhares de trabalhadores migrantes”.'),

('Copa do Mundo: é obrigatório dar folga nos dias em que o Brasil joga?','2022-06-30','Essa é uma dúvida comum de muitos trabalhadores. Dessa maneira, é importante destacar que, de acordo com a legislação brasileira, não existe nenhuma obrigatoriedade de liberar os trabalhadores em razão dos jogos do Brasil na Copa do Mundo. Por esse motivo, pode ser que os funcionários precisem trabalhar enquanto os jogos acontecem.
Vale a pena lembrar que, caso o trabalhador simplesmente decida faltar, isso poderá incorrer como falta ao trabalho.
Assim, o trabalhador estará sujeito a sofrer sanções como descontos na folha de pagamentos ou outras sanções disciplinares, como é o caso, por exemplo, das advertências.
As empresas ou empregadores podem liberar os funcionários, se quiserem, mas não são obrigadas a fazer isso. No entanto, é possível que a empresa proponha algum acordo, como a compensação da jornada de trabalho. Isso ocorre porque, já que os jogos acontecem em horário comercial, existe a possibilidade de pagar as horas em outro momento.
Mas tudo isso deve ser firmado em um acordo. Recomenda-se que os empregadores ou companhias avisem aos seus funcionários a respeito do posicionamento com antecedência.'),

('Lorem ipsum', '2022-04-23','Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla minima sed, laboriosam officiis molestiae impedit unde sapiente minus distinctio eaque veritatis soluta dignissimos ut eum tempore culpa molestias sit vero.
    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Porro nesciunt quis quasi consequatur quia illum eos, sequi qui architecto ut ex vero similique. Exercitationem, asperiores mollitia aut omnis itaque tempora.
    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minus quaerat pariatur assumenda illo omnis quos sapiente neque explicabo praesentium, aliquid obcaecati beatae quas possimus quam, ducimus architecto. Nulla, distinctio ut!
    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero optio, maiores quos at quaerat cupiditate totam amet deleniti hic aspernatur et, magnam atque magni eos eius est, eum cum iure!'),


('CONVOCAÇÃO DA SELEÇÃO BRASILEIRA PARA COPA DO MUNDO 2022','2022-11-01','No dia 7 de novembro, o técnico da Seleção Brasileira, Tite, irá acabar com o mistério que ronda os bastidores sobre a convocação do Brasil para a Copa do Mundo 2022.Na Sede da CBF, no Rio de Janeiro, Tite irá revelar os 26 jogadores que irão vestir a camisa Canarinha na busca pelo inédito hexa.
O atacante do Goiás, Pedro Raúl, um dos destaque do Brasileirão Série A 2022, é mais um nome que está na pré-lista de convocados da Seleção Brasileira para a Copa do Mundo 2022.Mesmo sendo um dos artilheiros do campeonato, é bastante difícil do atacante Pedro Raúl ir para a disputa da Copa do Mundo 2022.
Com jogadores como Richarlison, Gabriel Jesus e Firmino correndo na liderança pela camisa 9 Canarinha, o atacante do Goiás deve ficar de fora dos 26 jogadores que irão para o Catar.'),


('Barcelona perde meia por lesão até depois da Copa do Mundo','2022-07-30','O Barcelona confirmou que o meia Franck Kessié possui uma lesão muscular no bíceps femoral da perna esquerda após a realização de exames nesta quarta-feira. Com isso, o atleta não estará disponível até o fim da Copa do Mundo.
O clube catalão tem apenas dois compromissos antes do início do Mundial do Qatar. Neste sábado, os culés recebem o Almería, enquanto viajam para encarar o Osasuna no próximo dia oito de novembro, sendo ambos os jogos pela La Liga.
Assim, Kessié se une a uma legião de atletas que estão entregues ao Departamento Médico. Além do meia, o Barcelona não conta com Jules Koundé, Eric García, Andreas Christensen, Memphis Depay, Sergi Roberto e Ronald Araújo.
Essa é a segunda lesão muscular do atleta da Costa do Marfim. No mês passado, Kessié havia sentido um problema durante uma partida contra a Inter de Milão, pela Champions League, mas voltou rapidamente.'),


('Copa do Mundo: supercomputador prevê final entre Argentina e Portugal','2022-10-27','Um supercomputador previu que Lionel Messi e Cristiano Ronaldo se enfrentarão na final da Copa do Mundo de 2022. E com a Argentina levando a melhor sobre a seleção da Terrinha na decisão por pênaltis.
A pesquisa, conduzida pela BCA Research, foi publicada no relatório especial “The Most Important Of All Unimportant Forecasts 2nd Edition: 2022 FIFA World Cup”. A BCA Research baseou o resultado do torneio em estatísticas de jogadores do game Fifa Soccer, bem como uma amostra de 192 jogos da fase de grupos e 64 partidas eliminatórias disputadas durante as Copas do Mundo de 2006, 2010, 2014 e 2018.
O lado curioso é que a Argentina não aparece entre as favoritas nos principais sites de apostas, que colocam, na ordem, Brasil e França à frente.
Outro detalhe é que o “supercomputador” colocou a Argentina como campeã, mas com 7% de possibilidade disso realmente se concretizar
- O quão confiantes estamos sobre nossa escolha para o vencedor? Embora estejamos felizes com nossa escolha, a Argentina terá muitos jogos complicados ao longo da fase a eliminar, e a final é basicamente uma questão de cara ou coroa. Assim, a probabilidade de ganhar o Mundial é de apenas 7%, mesmo como favoritos - disse um responsável da empresa, citado pela revista inglesa FourFourTwo.'),


('Inglaterra pode ter mais uma importante baixa no time que vai para a Copa do Mundo no Qatar','2022-08-08','Poucos dias antes da lista final dos convocados para a Copa do Mundo do Qatar, a Inglaterra poderá ter mais um problema para o técnico Gareth Southgate.O lateral-esquerdo Ben Chilwell sofreu uma lesão muscular pelo Chelsea no jogo contra o Dínamo de Zagreb em Stamford Brigde, nesta quarta-feira, pela Champions League.
"É um golpe para nós. Vê-lo parar assim não é uma grande visão, vamos torcer para que não seja tão grave quando fizerem os exames. Mas claramente estamos desapontados", disse Graham Potter, técnico do Chelsea, em entrevista coletiva.
O treinador admite que estava preocupado com a situação de Chiwell a ponto de poupá-lo de algumas partidas para evitar lesões.
"Ele não jogou no fim de semana. Havia um pensamento de que ele poderia jogar esta noite e ter tempo suficiente para se recuperar no fim de semana. Então, tentamos gerenciá-lo, ele nunca jogou os três jogos em uma semana", explicou.
O técnico Gareth Southgate tem até o dia 14 de novembro para anunciar os 26 jogadores que irão para o Qatar. A primeira partida da Inglaterra na Copa do Mundo é contra o Irã em 21 de novembro.
Reece James (Chelsea), Kyle Walker (Manchester City) e Kalvin Phillips (Manchester City) poderão desfalcar os ingleses no Mundial.'),


('Bola de Ouro, Benzema mira Copa do Mundo: "Tenho muita ambição"', '2022-10-08','O aviso foi dado: o próximo objetivo de Karim Benzema é conquistar a Copa do Mundo de 2022. O atacante da seleção da França já falou sobre a sua grande meta, poucos minutos depois de conquistar a Bola de Ouro 2022, da revista France Football.
— Como sempre digo, tenho ambição. Nunca ganhei a Copa do Mundo com a França. Coisas como essa ainda me falta cumprir. É um objetivo. Tenho muita ambição e confiança em mim mesmo. Ir à Copa, fazer todo o possível para ganhá-la é o meu objetivo agora mesmo — declarou Benzema, em coletiva após o evento no Théâtre du Châtelet, em Paris.
Atual campeã mundial, a França está no Grupo D da Copa do Mundo, junto de Austrália, Dinamarca e Tunísia. A estreia no Catar vai ser no dia 22 de novembro, uma terça-feira, às 16h (de Brasília), contra os australianos.
Após quase seis anos afastado da seleção, Benzema voltou a defender a França em junho de 2021, na Eurocopa. A equipe foi eliminada nas oitavas de final, pela Suíça (nos pênaltis), e o atacante se despediu do torneio com quatro gols marcados.
Poucos meses depois, ele seria fundamental para a conquista do título da Liga das Nações 2021/22, ao fazer um gol contra a Bélgica, na semifinal (vitória por 3 a 2), e na decisão contra a Espanha (2 a 1). Benzema tem ao todo 97 jogos e 37 gols pela seleção francesa.
— Sempre tive a Bola de Ouro na minha cabeça. Ambição é trabalhar mais, ser mais decisivo. Disse a mim mesmo que poderia ser um líder do Real Madrid, o melhor clube do mundo. Passei momentos difíceis, principalmente quando estava só treinando e meus companheiros estavam com a seleção e eu não podia estar — desabafou Benzema.'),


('Definidas as adversárias do Brasil na Copa do Mundo feminina','2022-09-23','O Brasil já sabe quais serão as suas primeiras adversárias na Copa do Mundo feminina de 2023. Em sorteio realizado neste sábado em Auckland, na Nova Zelândia, um dos países sedes do mundial (a Austrália também sediará a competição), a Seleção Brasileira caiu no Grupo F, junto com França, Jamaica e uma seleção que virá da repescagem (Paraguai, Taiwan, Papua Nova Guiné ou Panamá).
A estreia das comandadas de Pia Sundhage está marcada para o dia 24 de julho em Adelaide, contra a adversária que virá do playoff C. No dia 29, em Brisbane, as brasileiras encaram a seleção francesa, principal rival nesta fase. O último jogo acontece Melbourne, contra as jamaicanas, no dia 2 de agosto. Desta forma, a Seleção jogará todas as partidas da primeira etapa da Copa na Austrália. Avançando, o Brasil encara quem passar do Grupo H, que conta com Alemanha, Marrocos, Colômbia e Coreia do Sul.
A partida de abertura do Mundial acontece no dia 20 de julho, com o duelo entre Nova Zelândia e Noruega. Já a grande final está agendada para o dia 20 de 
agosto. Esta será a primeira vez que a competição acontece com 32 equipes, mesmo números de participantes da competição masculina.O Brasil fechará 2022 com mais dois amistosos, que serão realizados nos dias 7 e 15 de novembro, ainda sem adversárias definidas. A Seleção feminina vem de 10 jogos sem derrota, incluindo um 4 a 1 sobre a Noruega e o título da Copa América, vencendo na final a Colômbia.'),


('Espanhol que caminhava para a Copa do Mundo é dado como desaparecido no Irã','2022-05-26','O paradeiro de um espanhol que estava documentando sua jornada a pé de Madri a Doha para a Copa do Mundo do Catar virou motivo de preocupação desde que chegou ao Irã, há três semanas, disse sua família nesta segunda-feira (24), despertando temores sobre seu destino em um país afetado por muitos protestos.
O experiente trekker, ex-paraquedista e fervoroso torcedor de futebol Santiago Sanchez, de 41 anos, foi visto pela última vez no Iraque depois de caminhar por 15 países e compartilhar extensivamente sua jornada em uma conta no Instagram nos últimos nove meses. Mas suas postagens exuberantes pararam de repente em 1º de outubro, no dia em que ele entrou no Irã pela instável fronteira noroeste do país.
A família de Sanchez diz que suas atualizações diárias do WhatsApp também pararam naquele dia. Eles temem o pior. "Estamos profundamente preocupados, não conseguimos parar de chorar, meu marido e eu", disse sua mãe, Celia Cogedor, à imprensa.
Os pais de Sanchez denunciaram o filho como desaparecido à polícia nacional da Espanha e ao Ministério das Relações Exteriores. Mas as autoridades espanholas dizem que não têm informações sobre seu paradeiro, afirmando que o embaixador espanhol em Teerã estava cuidando do assunto. As ligações da reportagem para o Ministério das Relações Exteriores do Irã em busca de comentários não foram retornadas imediatamente na segunda-feira.
O desaparecimento de Sanchez no Irã, sua última parada antes de chegar ao Catar para a Copa do Mundo, ocorre quando manifestantes protestam em toda a República Islâmica no maior movimento antigovernamental em mais de uma década. As manifestações eclodiram em 16 de setembro pela morte de Mahsa Amini, uma mulher de 22 anos detida pela polícia do Irã por supostamente não aderir ao rígido código de vestimenta islâmico do país.');
