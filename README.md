# TRABALHO 2 - PARADIGMAS DA PROGOMAÇÃO - TEMA 5 - PROGRAMAÇÃO LÓGICA EM PROLOG
ALUNOS: PEDRO HENRIQUE DA SILVA HINERASKY & ALFREDO COSSETIN NETO

APRESENTAÇÃO EM POWERPOINT: %link power point
## CÓDIGO 1: PROBLEMA DA BLACK FRIDAY
Cinco mulheres estão lado a lado aproveitando as promoções da Black Friday, cada uma com uma cor de camiseta, acompanhadas por uma pessoa,
tem uma certa idade e compraram um produto com uma porcentagem de desconto.

Descubra as informações das mulheres

- Mulheres - Anita, Clara, Marietta, Fernanda, Rosana;
- Cores - Vermelho, Amarelo, Azul, Verde, Branco;
- Idades - 22 anos, 29 anos, 31 anos, 36 anos, 43 anos;
- Acompanhantes - Pai, Tio, Namorado, Marido, Irmão;
- Produto - Celular, Fogão, Geladeira, TV, Notebook;
- Desconto - 30%, 40%, 50%, 60%, 70%;

***REGRAS:***
- 1 - A cliente de camiseta Azul está em algum lugar entre a cliente que está acompanhada do Irmão e a cliente mais nova, nessa ordem.
- 2 - A mulher de Vermelho está ao lado da mulher que está comprando um Fogão.
- 3 - Anita está exatamente à esquerda de quem conseguiu um desconto de 50%.
- 4 - Em uma das pontas está a mulher de camiseta Amarela.
- 5 - A cliente que está comprando um Notebook está em algum lugar entre quem conseguiu a maior porcentagem de desconto e quem está comprando uma Geladeira, nessa ordem.
- 6 - A mulher que está acompanhada do Pai está ao lado da mulher que está comprando um Celular.
- 7 - A cliente de Azul está em algum lugar entre a cliente mais velha e a cliente que está comprando um Notebook, nessa ordem.
- 8 - Na quarta posição está a cliente de camiseta Verde.
- 9 - Fernanda está ao lado da cliente que conseguiu 40% de desconto.
- 10 - A cliente que está acompanhada do Namorado está ao lado da cliente que está comprando um Notebook.
- 11 - A mulher de 31 anos está em algum lugar entre quem conseguiu 40% de desconto e quem tem 29 anos, nessa ordem.
- 12 - A cliente que está acompanhada do Pai está em algum lugar à direita da cliente de Azul.
- 13 - A cliente que conseguiu um desconto de 40% está ao lado da cliente que está acompanhada do Irmão.
- 14 - A mulher de Branco está ao lado da cliente que conseguiu 50% de desconto.
- 15 - Quem está acompanhada do Pai está entre quem está acompanhada do Irmão e quem está acompanhada do Namorado, nessa ordem.
- 16 - Marietta tem 31 anos.
- 17 - Anita está ao lado da cliente de camiseta Azul.
- 18 - A cliente que conseguiu um desconto de 30% está em algum lugar entre quem conseguiu 70% de desconto e quem está acompanhada do Pai, nessa ordem.
- 19 - A mulher que está acompanhada do Tio está ao lado da mulher de Verde.
- 20 - Clara está na quinta posição.
- 21 - A cliente de 22 anos está em algum lugar entre a cliente de Azul e a cliente de 31 anos, nessa ordem.
- 22 - A cliente de camiseta Branca está exatamente à direita da mulher que está acompanhada do Marido.

 ***SOLUÇÃO:*** [black_friday.pl](black_friday.pl) - Ao declarar as regras ditas por meio de predicados do prolog, o computador chega em um resultado que se encaixe nas condições propostas.

***LINK DO PROBLEMA*** : https://rachacuca.com.br/logica/problemas/black-friday/

![image](https://user-images.githubusercontent.com/104012810/172277877-d8e2c34f-1e43-431c-8fc0-152b53329425.png)

## CÓDIGO 2: SR. SAPO

O Sr. Sapo mora num lago de formato retangular dividido em um reticulado de células quadradas
de um metro de lado. Algumas das células são pedras que estão acima do nível da água.
O Sr. Sapo é muito atlético e pode saltar a distâncias de até três metros, mas curiosamente ele só
pode saltar nas direções paralelas aos lados do lago. A figura (a) abaixo mostra um lago, e a figura
(b) uma sequência de pulos do Sr. Sapo.
![image](https://user-images.githubusercontent.com/104012810/172278557-3019d13d-947c-44fa-8058-d29580551467.png)

O Sr. Sapo está em uma pedra e quer ir visitar sua namorada que está em outra pedra. Ele está
com pressa e não quer se molhar, portanto quer chegar ao seu destino pulando de pedra em pedra,
sem cair na água.
Dados o mapa do lago, a pedra em que o Sr. Sapo está e a pedra em que a sua namorada está,
determine se é possível ele chegar ao seu destino sem se molhar.

 ***SOLUÇÃO:*** [Sr.Sapo.pl](Sr.Sapo.pl) - Primeiramente, são buscadas todas as pedras no alcance de onde o Sr.Sapo está, agora, recursivamente, são buscadas todas as pedras no alcance das novas pedras, até encontrar uma pedra no alcance da pedra destino 

***LINK DO PROBLEMA*** : https://olimpiada.ic.unicamp.br/static/extras/obi2021/provas/ProvaOBI2021_f3pj.pdf

![image](https://user-images.githubusercontent.com/104012810/172279304-40a24385-1981-4fe3-a3df-ed6a3e7fa386.png)

![image](https://user-images.githubusercontent.com/104012810/172279222-f78ea19f-90f2-4e0a-b7db-1b7d1599be6a.png)

## EXERCÍCIO PROPOSTO
**VAN DE JUÍZES**

Uma van transportando cinco juízes de atletismo – F, G, H, I e J – chegou na escola. Os juízes
vão trabalhar nas olimpíadas esportivas que acontecem durante este final de semana. Os juízes
desembarcam da van um de cada vez, em uma ordem consistente com as seguintes condições:

- H desembarca em algum momento antes de G.
- I desembarca em algum momento antes de G, mas em algum momento após F.
- O próximo a desembarcar após F foi J.

Qual das seguintes alternativas poderia ser a ordem, do primeiro ao último, em
que os juízes desembarcam da van?
- (A) J, H, F, I, G
- (B) F, J, H, G, I
- (C) F, J, I, H, G
- (D) H, J, F, I, G
- (E) F, I, J, G, H

## REFERÊNCIAS
EXEMPLOS APRESENTADOS: [Rachacuca](https://rachacuca.com.br/logica/problemas/) & [Provas da OBI](https://olimpiada.ic.unicamp.br/passadas/)

EXERCÍCIO PROPOSTO: [OBI2021 – Inic. Nível 1 – Fase 2](https://olimpiada.ic.unicamp.br/static/extras/obi2021/provas/ProvaOBI2021_f2i1.pdf) (ADAPTADO)

PREDICADOS PARA MANIPULAÇÃO DE LISTAS: [Tutorial SWI-Prolog](https://www.swi-prolog.org/pldoc/man?section=lists)

