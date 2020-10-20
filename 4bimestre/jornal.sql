-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Out-2020 às 14:31
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcategoria`, `categoria`) VALUES
(1, 'Saúde'),
(2, 'Política'),
(3, 'Entreterimento'),
(4, 'Educação'),
(5, 'Esporte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codnoticia` int(11) NOT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codcategoria` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codnoticia`, `codRedator`, `codcategoria`, `titulo`, `noticia`, `dia`, `mes`, `ano`) VALUES
(1, 3, 5, 'Qual esporte que mais cresce no Brasil?', 'Sem sombra de dúvidas, o futebol é o esporte mais assistido e praticado em terras tupiniquins. Qual criança não sonha em ser um grande jogador de futebol? Mas, outros esportes antes inacessíveis ganham espaço no Brasil. Uma das modalidades que mais cresce no mundo é o MMA (Mixed Martial Arts – em português: Artes Marciais Mistas), e no Brasil não poderia ser diferente. O país é um dos que mais revela lutadores para o mundo. Mas se engana quem pensa que só o MMA está ganhando adeptos por aqui. Esportes que sempre pareceram distantes e difíceis de entender também estão entre os novos queridinhos do homem brasileiro. No post de hoje, vou falar um pouco sobre quatro modalidades que têm conquistado fãs: MMA, Poker, Futebol Americano e Baseball.', 10, 12, 2018),
(2, 5, 3, 'Redes Sociais ', 'As redes sociais são sim uma constante distração na rotina de qualquer pessoa, especialmente na rotina de estudos dos seus filhos. Como é possível navegar em qualquer uma delas com apenas algum clique no celular, é importante saber controlar esse acesso quando é necessário concentrar-se em momentos de estudo ou de lição de casa – e em alguns casos, até na sala de aula.\r\n\r\nPor isso, um dos malefícios das redes sociais, sem sombra de dúvidas, é sua capacidade de gerar distração em quaisquer pessoas, inclusive nos seus filhos.', 8, 5, 2018),
(3, 2, 4, 'Robótica com sucata ', 'O projeto tomou vida na Escola Municipal de Ensino Fundamental Almirante Ary Parreira, na Vila Babilônia, zona sul da cidade de São Paulo. Ele se apropria de metodologias ativas como o aprender fazendo e o movimento maker para ensinar os alunos a transformar o lixo em objeto de ensino.\r\n\r\nCom a iniciativa, mais de uma tonelada de resíduos recicláveis já foi retirada das ruas. Para os alunos, é a chance de aprender como a tecnologia pode contribuir para o desenvolvimento de soluções sustentáveis.', 20, 10, 2011),
(4, 4, 2, 'Regime Brasileiro', 'O Governo Federal do Brasil é o Poder Executivo no âmbito da União. É sediado em Brasília (DF) e é o responsável pelos interesses da administração federal em todo território nacional. Tem como mandatário o Presidente da República. União é a pessoa jurídica de Direito Público representante do Governo Federal no âmbito interno e da República Federativa do Brasil no âmbito externo. É definida no artigo 18 da Constituição Federal:\r\n\r\n\"Art. 18. A organização político-administrativa da República Federativa do Brasil compreende a União, os Estados, o Distrito Federal e os Municípios, todos autônomos, nos termos desta Constituição.\"\r\n\r\nCabe ressaltar, que não existe hierarquia de leis entre as criadas pela União e os Estados-membros da Federação, pois existem competências (lei federais e leis estaduais).\r\n\r\nO Brasil é uma república federativa constitucional presidencialista, de forma adotada em 1889. O Estado brasileiro está organizado em três Poderes: o Executivo, o Legislativo e o Judiciário. O Chefe do Poder Executivo (que acumula as funções de chefe de Estado e chefe de Governo) é o Presidente da República. Segundo a Constituição da República Federativa do Brasil, no Plebiscito que foi realizado no dia 21 de abril de 1993, disciplinado na Emenda Constitucional n° 2, de 25 de agosto de 1992, foram mantidos a república e o presidencialismo, como forma e sistema de governo, respectivamente.\r\n\r\nDe acordo com o Índice de Democracia, compilado pela revista britânica The Economist, o Brasil possui desempenho elevado nos quesitos pluralismo no processo eleitoral (nota 9,5) e liberdades civis (nota 9,1).[1] O país possui nota acima da média em funcionalidade do governo (nota 7,5).[1] No entanto, possui desempenho inferior nos quesitos participação política (nota 5,0) e cultura política (nota 4,3).[1] O desempenho do Brasil em participação política é comparável ao de Malauí e Uganda, considerados \"regimes híbridos\", enquanto o desempenho em cultura política é comparável ao de Cuba, considerado um regime autoritário.[1] No entanto, a média geral do país (nota 7,1) é inferior somente à do Uruguai (nota 8,1) e do Chile (nota 7,6) na América do Sul.[1] Dentre os BRIC, apenas a Índia (nota 7,2) possui desempenho melhor.[1] De fato, em relação aos BRIC, a revista já havia elogiado a democracia do país anteriormente, afirmando que \"em alguns aspectos, o Brasil é o mais estável dos BRIC. Diferentemente da China e da Rússia, é uma democracia genuína; diferentemente da Índia, não possui nenhum conflito sério com seus vizinhos\".[2]', 10, 3, 2007),
(5, 1, 1, 'O que é o SUS', 'O Sistema Único de Saúde (SUS) é a denominação do sistema público de saúde brasileiro[nota 1] inspirado no National Health Service do Reino Unido[1] e criado pelos constituintes de 1988 no dia 17 de maio de 1988, na 267 ª Sessão da Assembleia Nacional Constituinte[2]. O Brasil é considerado o único país com mais de 200 milhões de habitantes que possui um sistema de saúde pública universal.[3]\r\n\r\nO SUS realiza desde atendimentos primários até procedimentos complexos e oferece atendimento de emergência para pessoas que sofrem acidentes via Serviço de Atendimento Móvel de Urgência (SAMU). O sistema de saúde brasileiro também fornece vacinas e remédios gratuitamente para pessoas com diversas doenças (como diabetes, pressão alta, asma, HIV e Alzheimer), financia pesquisas na área de epidemiologia e fiscaliza a qualidade dos alimentos oferecidos em estabelecimentos comercias por meio da Agência Nacional de Vigilância Sanitária (Anvisa).[3]\r\n\r\nFoi instituído pela Constituição Federal de 1988, em seu artigo 196, como forma de efetivar o mandamento constitucional do direito à saúde como um “direito de todos” e “dever do Estado” e está regulado pela Lei nº. 8.080/1990,[4] a qual operacionaliza o atendimento público da saúde.\r\n\r\nCom o advento do SUS, toda a população brasileira passou a ter direito à saúde universal e gratuita, financiada com recursos provenientes dos orçamentos da União, dos Estados, do Distrito Federal e dos Municípios, conforme rege o artigo 195 da Constituição. Fazem parte do Sistema Único de Saúde, os centros e postos de saúde, os hospitais públicos - incluindo os universitários, os laboratórios e hemocentros (bancos de sangue), os serviços de vigilância sanitária, vigilância epidemiológica, vigilância ambiental, além de fundações e institutos de pesquisa acadêmica e científica, como a Fundação Oswaldo Cruz (FIOCRUZ) e o Instituto Vital Brazil.[5]', 15, 12, 2017),
(6, 4, 1, 'Melhores Sistemas de Saúde ', '10. Cuba\r\nCuba entrou em diversas controvérsias por conta de seu sistema político. Entretanto, quando o assunto é saúde, o país da América Central tem um grande destaque. Além de ter uma das melhores faculdades de medicina do mundo, Cuba envia médicos para diversos outros países quando solicitados. Além disso, os cubanos são ótimos com assistência preventiva, ou seja, procuram sempre alertar os pacientes para que tenham uma alimentação saudável e pratiquem exercícios regularmente, além é claro, de manterem uma boa higiene pessoal.\r\n\r\n9. Itália\r\nDificilmente se encontra na Itália, planos de saúde privados. Isso ocorre pelo fato de o governo do país europeu, oferecer toda a assistência médica que os cidadãos italianos necessitam. Memso que, a Italia tenha uma das menores taxas de despesa de saúde per capita, comparada às nações de primeiro mundo, como os Estados Unidos, Reino Unido, Canadá, e Suíça.\r\n\r\n8. Japão\r\nQuando o assunto é saúde, o Japão parece ser incrível. O país asiático conta com as menores taxas de mortalidade infantil e as melhores taxas de recuperação de doenças graves. Além disso, a expectativa de vida no Japão é de 86 anos. O sistema de saúde deste país se mostra bastante avançado e excelente para os cidadãos do país.\r\n\r\n\r\n7. França\r\nO sistema de saúde na França é espetacular e funciona da melhor maneira possível para os cidadãos deste país. Ele é financiado pelo próprio povo, com base na renda de cada cidadão. Assim, quando precisa de assistência médica, o cidadão francês recebe um reembolso de até 70% do governo nas despesas médicas. Inclusive, os franceses podem escolher seu plano de saúde preferido. Até mesmo quem possui plano de saúde privado pode utilizar este modelo de sistema de saúde universal como uma segunda opção.\r\n\r\n6. Alemanha\r\nNa sexta posição, temos a Alemanha, país onde praticamente, todos os cidadãos podem ter um plano de saúde. São 200 planos disponíveis e para que tenham esse tipo de assistência médica, os alemães contribuem com 8% de seu salário para o fundo de saúde, além dos empregadores, que também depositam o mesmo valor ao fundo. Quem não tem condições de pagar um plano de saúde, terá disponível a assistência pública. As crianças, no entanto, são cobertas pelo fundo de contribuintes. Esse modelo de gestão de saúde está sendo um tremendo sucesso na Alemanha.\r\n\r\n5. Grã-Bretanha\r\nNeste país, o Governo é o grande responsável por manter os hospitais funcionando, além disso o governo também paga pela assistência médica dos cidadãos, entretanto, com algumas ressalvas. Quando um cidadão necessita de assistência no centro médico, todas as despesas já estão pré-paga (menos medicamentos prescritos). Porém, existe um limite para a utilização dos serviços e este limite é de US$ 45 mil. Entretanto, o uso desse limite precisa ser aprovado pelo Instituto Nacional para Saúde e Excelência Clínica para que possa ser utilizado.\r\n\r\n4. Canadá\r\nO sistema de saúde no Canadá, assim como em outros países desenvolvidos e que estão nesta lista, são financiados através das rendas e impostos dos cidadãos. Diferente de alguns países, como por exemplo, na Grã-Bretanha, os hospitais e médicos são privados. Apesar de estar ficando um tanto cara, a assistência médica no Canadá é uma das melhores e ainda sim, mais barata que em alguns outros países, como os EUA, por exemplo.\r\n\r\n3. China\r\nA assistência médica na China pode ser considerada fantástica, entretanto, nem sempre foi assim. Porém, nos dias atuais, o governo do país asiático consegue garantir que ao menos, 90% dos cidadão chineses tenham plano de saúde. Isso se deve à nova reforma feita na saúde, onde o governo disponibilizou US$ 124 bilhões para assistência médica.\r\n\r\n\r\n2. Suíça\r\nA Suíça se destaca em muitos aspectos em relação a outros países do mundo. Com a saúde não poderia deixar de ser diferente. Desde 1994, os suíços contam com um sistema universal de saúde, que apesar de privado, funciona muito bem no rico país europeu. Apesar de possuir um dos sistemas de saúde mais caros do mundo, na Suíça, os cidadão podem escolher os planos desejados e aqueles que não podem pagar, ganham subsídios do governo.\r\n\r\n1. Taiwan\r\nPor fim, chegamos ao país com o melhor sistema de saúde do mundo e surpreendentemente, é Taiwan. O país asiático cobre a assistência médica para toda a população e ainda consegue diminuir custos. Com a popularização dos cartões inteligentes, a evolução do sistema de saúde deste país teve uma evolução ainda maior. Para quem não sabe, nos cartões inteligentes constam todas as informações de cada paciente, ou seja, todo seu histórico médico desde o nascimento. Assim, fica muito mais fácil para os médicos diagnosticarem possíveis problemas de saúde dos cidadãos. Este sistema é baseado em impostos sobre emprego, portanto, aos idosos e aqueles que não podem pagar o sistema, são concedidos subsídios.\r\n', 19, 4, 2019),
(7, 2, 1, 'Existe uma vacina ou medicamento contra COVID-19?', '\r\nAinda não. Até o momento, não há vacina nem medicamento antiviral específico para prevenir ou tratar a COVID-2019. As pessoas infectadas devem receber cuidados de saúde para aliviar os sintomas. Pessoas com doenças graves devem ser hospitalizadas. A maioria dos pacientes se recupera graças aos cuidados de suporte.\r\n\r\nAtualmente, estão sendo investigadas possíveis vacinas e alguns tratamentos medicamentosos específicos, com testes através de ensaios clínicos. A OMS está coordenando esforços para desenvolver vacinas e medicamentos para prevenir e tratar a COVID-19.\r\n\r\nAs maneiras mais eficazes de proteger a si e aos outros contra a COVID-19 são limpar frequentemente as mãos, cobrir a tosse com a parte interior do cotovelo ou lenço e manter uma distância de pelo menos 1 metro das pessoas que estão tossindo ou espirrando', 19, 10, 2020),
(8, 5, 4, 'Como é definida a educação brasileira?', 'Devido as recentes mudanças, nem todos sabem como é formada a educação básica brasileira. Essa primeira etapa educacional visa a formação cidadã dos jovens brasileiros. Para isso, divide em fases, cada uma com objetivos distintos. Essas categorias também se organizam de formas diferentes, possuindo características e metodologias próprias. \r\n\r\nEtapas da educação básica \r\nA educação básica é formada por três grandes etapas: educação infantil, ensino fundamental e ensino médio. De acordo com a Lei de Diretrizes e Bases da Educação, a educação básica é obrigatória a partir dos quatro anos de idade. O Estado libera o ensino na iniciativa privada, desde que sejam atendidas as condições estabelecidas na legislação. \r\n\r\nA Base Nacional Comum Curricular (BNCC) é um documento criado para nortear educadores e instituições de ensino sobre os conhecimentos considerados essenciais e indispensáveis ao desenvolvimento das crianças e jovens. A BNCC propõe estratégias, conceitos e situações que devem ser trabalhadas em cada fase da educação básica, como é o caso das competências gerais da educação infantil.\r\n\r\nContinue a leitura e entenda como funciona cada etapa da educação básica. \r\n\r\nEducação Infantil \r\nO ensino infantil é voltado para crianças de zero a cinco anos de idade. É nessa fase que acontece o primeiro contato com a escola, sendo uma fase fundamental para o desenvolvimento global dos alunos. \r\n\r\nNa educação infantil trabalha-se os aspectos cognitivo, físico, motor, psicológico, cultural e social dos pequenos, através de atividades lúdicas que favorecem a sua imaginação e criatividade. A educação infantil é dividida em: \r\n\r\n•    Creche e berçário \r\n•    Grupo 1 \r\n•    Grupo 2\r\n•    Grupo 3\r\n•    Grupo 4\r\n•    Grupo 5\r\n\r\nEnsino Fundamental \r\nCom duração total de 9 anos, o ensino fundamental é a etapa da educação básica que prepara o estudante para dominar a leitura, escrita e cálculo, além de capacitá-lo para compreender o ambiente social em que estão inseridos e as suas nuances. O ensino fundamental é dividido em:\r\n\r\n•    Ensino fundamental – anos iniciais: compreende do 1º ao 5º ano e é o momento dedicado a introdução escolar de conceitos educacionais que estarão presentes durante toda a educação básica. É o início do processo de alfabetização.\r\n\r\n- 1° ano do ensino fundamental I\r\n- 2° ano do ensino fundamental I\r\n- 3°ano do ensino fundamental I\r\n- 4° ano do ensino fundamental I\r\n- 5° ano do ensino fundamental I\r\n\r\n•    Ensino fundamental – anos finais: período formado pelo 6º ao 9º ano e passa a apresentar ao aluno desafios mais complexos de aprendizagem, além de aumentar o repertório de conhecimentos e conteúdos. Nesse momento também são trabalhadas questões de independência e responsabilidade.\r\n\r\n- 6° ano do ensino fundamental II\r\n- 7° ano do ensino fundamental II\r\n- 8°ano do ensino fundamental II\r\n- 9° ano do ensino fundamental II\r\n\r\nEnsino Médio \r\nCom três anos de duração, o ensino médio é comumente associado a preparação dos jovens para o Enem e demais vestibulares. No entanto, essa etapa escolar também trabalha o autoconhecimento, autonomia intelectual, pensamento crítico, entre outros. Concluir o ensino médio é fundamental para a colocação do jovem no mercado de trabalho. Mas é necessário continuar investindo na qualificação profissional através de uma graduação, curso técnico, curso de idiomas, etc. O ensino médio é formado pelos:\r\n\r\n- 1° ano do ensino médio\r\n- 2° ano do ensino médio\r\n- 3° ano do ensino médio', 21, 8, 2016),
(9, 3, 3, 'Redes sociais para investir em 2020', '1. Shoelace\r\nempresa google em local com arvores e ceu azul\r\nAntes de mais nada, preciso falar sobre uma plataforma que considero essencial, mas ainda não decolou.\r\n\r\nO motivo de destacá-la aqui é porque se trata da nova rede social do Google.\r\n\r\nA organização tem grande experiência no ramo: Orkut e YouTube são exemplos.\r\n\r\nCom o fracasso e finalização do Google+, essa é a nova aposta da maior empresa de publicidade online do mundo.\r\n\r\nE por que tanta atenção a ela?\r\n\r\nSimples: o Google domina dois dos maiores mercados de marketing online.\r\n\r\nTanto a mídia paga (links patrocinados) quanto o tráfego orgânico (SEO) são comandados pela empresa.\r\n\r\nSeja por meio do Google Ads ou do mecanismo de buscas, é sempre bom ficar de olho quando a companhia lança novos produtos.\r\n\r\nA Shoelace é nova rede social do Google criada em 2019.\r\n\r\nEla aposta nos interesses e eventos em comum para conectar as pessoas, e é a grande sacada da empresa para voltar a figurar entre as grandes redes sociais interativas.\r\n\r\nÉ voltada apenas para dispositivos móveis, pelo menos a princípio.\r\n\r\nBasicamente tem como principal ponto o encontro presencial entre pessoas, mostrando uma tendência na contramão das mídias tradicionais de internet.\r\n\r\nCom os chamados “loops”, a rede estimula o contato entre pessoas que comparecem a locais semelhantes e sugere eventos para encontros.\r\n\r\nOu seja, seria uma nova maneira de combinar saídas com os amigos e conhecer novas pessoas.\r\n\r\nA empresa promete que, em breve, o app estará disponível para todos os usuários.\r\n\r\nguia passo a passo de marketing de conteúdo\r\n\r\n2. Hello\r\nFundada pelo mesmo criador do Orkut junto a um pequeno grupo de engenheiros do Google, a Hello promete ser um ambiente seguro para amizades verdadeiras.\r\n\r\nSegundo o fundador, os laços criados nas redes sociais hoje dia são muito fracos e sua nova plataforma viria para mudar esse panorama.\r\n\r\n“Voltar a estabelecer laços profundos é o verdadeiro objetivo da plataforma”, disse Orkut Buyukkokten em entrevista.\r\n\r\nMas há mais por detrás.\r\n\r\nEle ainda afirma que seu maior objetivo é bater de frente com o Facebook, atraindo o público com a promessa de ser livre de anúncios.\r\n\r\nO foco não poderia ser outro: dispositivos móveis.\r\n\r\nEssa tendência parece acompanhar a maioria das novas redes sociais.\r\n\r\nUm diferencial dessa mídia social é que o algoritmo é baseado em personas.\r\n\r\nOu seja, visa auxiliar o encontro de pessoas com interesses semelhantes e localidades próximas (bem similar ao que promete a Shoelace, por sinal).\r\n\r\nPor exemplo, se você assinalar que gosta de gatos, animes ou cerveja, o bot dá preferência para conexões com gostos parecidos.\r\n\r\nAssim sendo, postagens de desconhecidos podem brotar no feed de notícias, uma característica peculiar.\r\n\r\nO app está disponível na Google Play e na App Store.\r\n\r\n2. TikTok\r\nicone de aplicativo tiktok em tela de smartphone\r\nFundada em 2016, a TikTok já conta com mais de 1,5 bilhões de usuários ativos mensalmente.\r\n\r\nCom o lema “faça seu dia”, a rede social tem como foco o compartilhamento de vídeos criados por pessoas comuns.\r\n\r\nPara se ter uma ideia do potencial do aplicativo, ele foi mais baixado que o Instagram e o Facebook em 2018.\r\n\r\nAqui as pessoas se divertem.\r\n\r\nGravam vídeos curtos (entre 15 e 60 segundos) e criam clipes musicais e cenas engraçadas.\r\n\r\nMas o ponto forte são as dublagens.\r\n\r\nOs usuários podem inserir filtros animados, efeitos visuais, textos, sons e músicas para tornar seus vídeos mais interessantes.\r\n\r\nOutro ponto importante é o uso de hashtags para desafiar outras pessoas, gerar mais vizualizações, mais engajamento e ganhar seguidores no Tik Tok.\r\n\r\nO recurso é um sucesso nos segmentos de moda, eventos, mídia e entretenimento, mas tem grande potencial para expansão para outras áreas.\r\n\r\nNo Brasil, um dos pilares da ferramenta é o youtuber Whindersson Nunes.\r\n\r\n4. Vero\r\nEm 2018, essa rede social ganhou grande destaque da mídia.\r\n\r\nIsso tem um motivo.\r\n\r\nA Vero se posicionou como uma alternativa ao Facebook e ao Instagram, levando em conta tudo aquilo que boa parte dos usuários reclama sobre as plataformas.\r\n\r\nPrimeiro, porque não tem algoritmo.\r\n\r\nNessa ferramenta, o feed é apresentado ao usuário de maneira cronológica.\r\n\r\nSegundo, não há recolhimento de dados do usuário, uma preocupação corriqueira.\r\n\r\nE, por fim, não comporta anúncios.\r\n\r\nO modelo de negócios de Mark Zuckerberg demorou a tomar forma, mas encontrou um método escalável.\r\n\r\nComo tudo no ambiente digital, surgiu uma rede social reativa que promete resolver todos os problemas enfrentados pelos cadastrados nas mais famosas ferramentas de interação.\r\n\r\nNesse cenário, a Vero emerge como uma ameaça ao monopólio de mídias digitais.\r\n\r\nO que, no fim das contas, só traz benefícios ao internauta.\r\n\r\n5. Quora\r\nA rede social conhecida como Quora tem um grande diferencial: a qualificação do público.\r\n\r\nBaseada em perguntas e respostas (Q&A), aposta na base para questionamentos e esclarecimentos aprofundados.\r\n\r\nImagine que você tenha uma dúvida sobre o dia a dia de um astronauta, por exemplo.\r\n\r\nAo fazer uma pergunta no Quora, há grandes chances de ela ser respondida por alguém que realmente foi ao espaço.\r\n\r\nE isso se expande para diversas outras áreas.\r\n\r\nPor enquanto, a base de usuários americana é gigantesca e conta com as melhores respostas.\r\n\r\nO sistema de alcance é baseado em “upvotes”, votos dados pelos usuários para classificá-las como relevantes.\r\n\r\nAos poucos o povo brasileiro adentra a plataforma, nessa que promete ser uma das redes sociais mais bem-sucedidas de 2020.\r\n\r\nOutra grande vantagem da Quora é a possibilidade de se firmar como referência em um assunto.\r\n\r\nQuando um autor ganha notoriedade, torna-se um “Top Writer” e recebe o título da aplicação.\r\n\r\nEm outras palavras, um título oficial de autoridade que pode gerar várias possibilidades de negócios.\r\n\r\n6. MeWe\r\nNos últimos anos, a internet passou por diversas transformações.\r\n\r\nPrincipalmente no que tange ao recolhimento e utilização de dados do usuário.\r\n\r\nO Facebook, por exemplo, passou por uma crise intensa ao ser acusada de quebra de privacidade.\r\n\r\nA principal proposta da MeWe é justamente a de combater essa prática.\r\n\r\nA plataforma se autodenomina como “a próxima geração de rede social”.\r\n\r\nNa página inicial, estampa orgulhosamente os dizeres “Sua vida privada #not4sale (não está à venda)”.\r\n\r\nE complementa: “Sem propagandas. Sem rastreio. Sem bobagens”.\r\n\r\nEm outras palavras, investe na criação de um ambiente seguro.\r\n\r\nA ferramenta também não possui um algoritmo, sendo utilizada a ordem cronológica para alimentar o feed de notícias.\r\n\r\nEm uma era na qual as pessoas se preocupam cada vez mais com sua privacidade, vale a pena voltar a atenção a esse tipo de novidade.\r\n\r\n7. WeChat\r\nicone de aplicativo wechat em tela de smartphone\r\nVocê provavelmente já sabe que o WhatsApp é o aplicativo de comunicação que domina os smartphones dos brasileiros.\r\n\r\nO WeChat, cuja essência é similar, até esboçou um crescimento há alguns anos, mas logo caiu em desuso por aqui.\r\n\r\nMas a verdade é que, enquanto o queridinho do Brasil apresentou pouquíssimas atualizações realmente efetivas, seu concorrente deu alguns passos a mais.\r\n\r\nHoje o WeChat permite ao usuário fazer compras, investir e diversas outras necessidades do usuário em um único aplicativo.\r\n\r\nA ferramenta também funciona com o modelo de feed, imitando o Instagram, o Twitter e o LinkedIn.\r\n\r\nPor enquanto, a maioria das features só funcionam no continente asiático, mas a ferramenta promete entrar forte no mercado do lado de cá.\r\n\r\n17 gráficos que mostram o futuro do marketing de conteúdo\r\n\r\n8. Reddit\r\nicone de aplicativo reddit em tela de smartphone \r\nVocê pode nunca ter ouvido falar no Reddit, mas a rede social é um fenômeno em terras estrangeiras.\r\n\r\nNão acredita?\r\n\r\nEntão, saiba que a ferramenta supera “peixes grandes” como Twitter e LinkedIn em número de usuários.\r\n\r\nBaseada em um sistema de fóruns, a plataforma agrega temas diversos que são compartilhados, comentados e reagidos de maneira simples.\r\n\r\nQuanto maior o número de votos em uma resposta, maior a relevância.\r\n\r\nBem simples, não é?\r\n\r\nA grande força do Reddit está nesse poder de votação, que concentra o poder nas ideias, e não nas pessoas.\r\n\r\nNo Reddit, as melhores ideias – muitas vezes, as mais inusitadas – vencem.\r\n\r\nVocê encontrará, por exemplo, uma discussão sobre o brinco utilizado por uma estrela de cinema em um filme lançado há quinze anos.\r\n\r\nOu poderá debater acerca dos melhores métodos para criar roupas para ursinhos de pelúcia de tamanho médio.\r\n\r\nO fato é que o Reddit é um fenômeno que não pode ser ignorado.\r\n\r\nApesar de sua presença relativamente fraca no Brasil, é possível que exploda a qualquer momento.\r\n\r\n9. Twitch\r\nmaos femininas segurando tablet com icone de aplicativo twitch em tela\r\nA indústria de games sofreu transformações intensas na última década.\r\n\r\nNão apenas em questão de gráficos, armazenamento e desempenho de consoles.\r\n\r\nMas também na maneira como são consumidos.\r\n\r\nA Twitch foi a plataforma que primeiro percebeu isso.\r\n\r\nCom mais de 15 milhões de usuários ativos diariamente, não pode ser ignorada por profissionais que querem se destacar no futuro.\r\n\r\nFunciona assim: um streamer (pessoa responsável pela transmissão ao vivo) joga seus videogames favoritos enquanto a comunidade assiste, interage, comenta e envia doações.\r\n\r\nSe parece algo que não agradaria a alguém, saiba que você está completamente enganado.\r\n\r\nOs jovens realmente sentem-se próximos de seus principais ídolos por meio desse recurso, e aproveitam seu tempo livre interagindo com pessoas à distância.\r\n\r\nCertamente uma rede social que eleva a influência de seus broadcasters a um outro nível.\r\n\r\n10. Wattpad\r\nlupa ampliando logo de aplicativo wattpad em tela de computador\r\n“As crianças de hoje em dia não leem tanto quanto antigamente”.\r\n\r\nEu já perdi as contas de quantas vezes já ouvi essa frase.\r\n\r\nMas eu não teria tanta certeza.\r\n\r\nAfinal, o Wattpad está aí para provar o contrário.\r\n\r\nEm um cenário digital no qual o storytelling ganha força dia após dia, a plataforma se mostra como o maior celeiro de autores do mundo.\r\n\r\nNela, mais de 80 milhões de pessoas se conectam para compartilhar histórias em mais de 50 idiomas.\r\n\r\nSão escritores profissionais e amadores que se reúnem em um único local para criar narrativas fabulosas e interagir.\r\n\r\nA comunidade brasileira é extremamente engajada.\r\n\r\nSão muitos os volumes criados em português, o que prova que a ferramenta vem forte para os próximos anos no cenário nacional.\r\n\r\n11. Caffeine\r\nHá algum tempo era praticamente impossível criar vídeos ao vivo por conta da velocidade de transmissão de internet.\r\n\r\nMas as novas tecnologias mudaram essa realidade.\r\n\r\nHoje as lives são um grande sucesso, principalmente entre os jovens.\r\n\r\nFoi com essa perspectiva em mente que alguns ex-designers da Apple criaram a Caffeine.tv, rede social que proporciona experiências em tempo real para seus usuários.\r\n\r\nDiferentemente de outras plataformas de stream, como Twitch, o foco dessa nova mídia é o engajamento.\r\n\r\nTanto que o modelo de premiação é voltado a essa métrica, deixando de lado números relacionados a visualizações e inscrições.\r\n\r\nA rede tem um perfil jovem.\r\n\r\nConta com emojis, filtros e outros recursos interativos.\r\n\r\nAlém disso, permite o compartilhamento de tela (inclusive sincronizada) para que os streamers assistam à programação junto ao público.\r\n\r\nO sucesso da Caffeine é a prova de que os vídeos ao vivo vieram para ficar.\r\n\r\n12. Lasso\r\nLançada em 2018, a rede social conhecida como Lasso é a concorrente direta da TikTok.\r\n\r\nConfirmando sua paixão por tendências, Mark Zuckerberg não perdeu tempo e criou um aplicativo de vídeos curtos, divertidos e engraçados.\r\n\r\nAssim, lançou essa nova plataforma que provavelmente receberá atualização de integração com suas principais aliadas, o Facebook e o Instagram.\r\n\r\nNo período de lançamento, rapidamente chegou ao número de 70 milhões de cadastros.\r\n\r\n13. Steemit\r\nA Steemit é uma rede social muito similar ao Reddit.\r\n\r\nMas, em vez dos “upvotes” da outra plataforma, nesta você recebe “Steem coins” de acordo com o desempenho de suas postagens.\r\n\r\nTrata-se de uma criptomoeda.\r\n\r\nEmbora tenha uma base de usuários modesta – cerca de 1,2 milhão -, decidi colocá-la na lista por ser uma ferramenta do futuro.\r\n\r\nEsse modelo de economia premia pessoas criativas com boas ideias.\r\n\r\nÉ uma nova maneira de criar conteúdo com qualidade e ainda receber por isso.\r\n\r\n14. Houseparty\r\nopçao baixar aplicativo houseparty em tela de smartphone \r\nA Houseparty se denomina como a primeira rede social cara a cara do mundo.\r\n\r\nA ideia é bem simples: um aplicativo de vídeos em grupo que permite o compartilhamento de telas com até oito pessoas ao mesmo tempo.\r\n\r\nTambém são aplicadas figurinhas, filtros e outros tipos de efeito para personalização do próprio quadro.\r\n\r\nA ideia de fazer uma “festa à distância” agradou muito ao público jovem.\r\n\r\nEm 2018, foram quase 20 milhões de novos usuários.\r\n\r\nIsso fez com que o mercado voltasse os olhos para a plataforma, que recebeu aportes e incentivos recentemente.\r\n\r\n15. Medium\r\nVocê provavelmente já conhece a plataforma conhecida como Medium.\r\n\r\nMas, então, por que colocá-la aqui?\r\n\r\nSimples: porque essa rede social não para de crescer e continua como uma das com maior potencial em 2020.\r\n\r\nA ferramenta de blogs é uma mistura de WordPress, Twitter e e-mail marketing.\r\n\r\nNela, você cria artigos, participa de grupos de discussão e acumula seguidores.\r\n\r\nEsse canal também permite o cadastro em uma espécie de newsletter, que envia mensagens diretamente para os inscritos.\r\n\r\nNesse modelo, o Medium apresenta uma evolução constante.\r\n\r\nÉ por isso que ela pode se tornar um dos mais valiosos meios de interação da web nos anos que se seguem.\r\n\r\n16. GIPHY\r\nlupa ampliando logo de aplicativo giphy em tela de computador\r\nParece incrível pensar que os GIFs prosperaram em uma era na qual vídeos de alta qualidade ao vivo são transmitidos, não é mesmo?\r\n\r\nMas a verdade é que esse formato de imagens animadas é, até hoje, um dos favoritos dos usuários.\r\n\r\nA GIPHY é a rede social que se adequou a essa tendência.\r\n\r\nNão há nenhum grande mistério na plataforma.\r\n\r\nTrata-se de um agregador de GIFs, geralmente voltados ao humor.\r\n\r\nApesar de não ser a ferramenta mais indicada para a presença de marcas, serve muito bem como um complemento para encontrar peças divertidas para ilustrar outros materiais.', 20, 10, 2020),
(10, 4, 5, 'Atletas mais bem pagos do mundo', '\r\nColocação	Atleta (Esporte)	Valor\r\n1º	Roger Federer (Tênis)	US$ 106,3 milhões\r\n2º	Cristiano Ronaldo (Futebol)	US$ 105 milhões\r\n3º 	Lionel Messi (Futebol)	US$ 104 milhões\r\n4º 	Neymar (Futebol)	US$ 95,5 milhões\r\n5º	LeBron James (Basquete)	US$ 88,2 milhões\r\n6º	Stephen Curry (Basquete)	US$ 74,4 milhões\r\n7º	Kevin Durant (Basquete)	US$ 63,9 milhões\r\n8º	Tiger Woods (Golfe)	US$ 62,3 milhões\r\n9º	Kirk Cousins (Futebol Americano)	US$ 60,5 milhões\r\n10º	Carson Wentz (Futebol Americano)	\r\nUS$ 59,1 milhões\r\n\r\n11º	Tyson Fury (Boxe)	US$ 57 milhões\r\n11º	Russel Westbrook (Basquete)	US$ 57 milhões\r\n13º	Lewis Hamilton (Fórmula 1)	US$ 54 milhões\r\n14ª	Rory McIlroy (Golfe)	US$ 52 milhões\r\n15º	Jared Goff (Futebol Americano)	US$ 49 milhões\r\n16º	Conor McGregor (MMA)	US$ 48 milhões\r\n17º	James Harden (Basquete)	US$ 47,8 milhões\r\n18º	Giannis Antetokounmpo (Basquete)	US$ 47,6 milhões\r\n19º	Anthony Joshua (Boxe)	US$ 47 milhões\r\n20º	Deontay Wilder (Boxe)	US$ 46,5 milhões\r\n21º	Tom Brady (Futebol Americano)	US$ 45 milhões\r\n22º	Drew Brees (Futebol Americano)	US$ 44,8 milhões\r\n23º	Novak Djokovic (Tênis)	US$ 44,6 milhões\r\n24º	Kyrie Irving (Basquete)	US$ 41,9 milhões\r\n25º	Phil Mickelson (Golfe)	US$ 40,8 milhões\r\n26º	Julio Jones (Futebol Americano)	US$ 40,5 milhões\r\n27º	Rafael Nadal (Tênis)	US$ 40 milhões\r\n28º	Klay Thompson (Basquete)	US$ 38,8 milhões\r\n29º	Naomi Osaka (Tênis)	US$ 37,4 milhões\r\n30º	Canelo Alvarez (Boxe)	US$ 37 milhões', 20, 10, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `DDD`, `telefone`, `email`, `cidade`, `dia`, `mes`, `ano`, `codTurma`) VALUES
(1, 'Douglas', 'Souza', 11, '11111-1111', 'douglas.souza@gmail.com', 'Ribeirão Pires', 18, 4, 2005, 3),
(2, 'Juliana', 'Silva', 11, '22222-2222', 'silva@gmail.com', 'Mauá', 10, 4, 2001, 8),
(3, 'Jorge ', 'Andrade', 11, '33333-3333', 'jorginho@gmail.com', 'Ribeirão Pires', 2, 6, 1999, 5),
(4, 'Felipe', 'Freitas', 11, '44444-4444', 'felipe@gmail.com', 'Ribeirão Pires', 7, 5, 1998, 8),
(5, 'Rafaela ', 'Amaral', 11, '55555-5555', 'rafaela.amaral@gmail.com', 'Mauá', 30, 10, 1960, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1c'),
(2, '1a'),
(3, '1b'),
(4, '2c'),
(5, '2a'),
(6, '2b'),
(7, '3c'),
(8, '3a'),
(9, '3b');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codcategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codnoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codcategoria` (`codcategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codcategoria`) REFERENCES `categoria` (`codcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
