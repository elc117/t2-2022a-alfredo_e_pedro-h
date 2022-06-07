% PROBLEMA DA BLACK FRIDAY
% LINK DO PROBLEMA : https://rachacuca.com.br/logica/problemas/black-friday/

%ESTRUTURA USADA PARA A LISTA:
%cliente(camiseta,nome,produto,desconto,idade,companhia)

% PREDICADOS AUXILIARES:
before(X, Y, L):-
    nth0(IdxX, L, X),
    nth0(IdxY, L, Y),
    IdxX < IdxY. % compara os índices de X e Y

ao_lado(X, Y, List) :- nextto(X, Y, List). % X à esquerda de Y
ao_lado(X, Y, List) :- nextto(Y, X, List). % Y à esquerda de X

na_ponta(X, L) :- L = [X|_]. % X é o primeiro elemento
na_ponta(X, L) :- last(L, X). % X é o último elemento

entre(X, Y, Z, L) :- % Y está entre X e Z
    before(X, Y, L), 
    before(Y, Z, L). 

solucao(Sol):-
    Sol = [_,_,_,_,_], % declaramos a lista Sol com 5 elementos
    entre((_,_,_,_,_,irmao),(azul,_,_,_,_,_),(_,_,_,_,22,_),Sol), % 1
    ao_lado((vermelho,_,_,_,_,_),(_,_,fogao,_,_,_),Sol), % 2
    nextto((_,anita,_,_,_,_),(_,_,_,50,_,_),Sol), % 3
    na_ponta((amarelo,_,_,_,_,_),Sol), % 4
    entre((_,_,_,70,_,_),(_,_,notebook,_,_,_),(_,_,geladeira,_,_,_),Sol), % 5
    ao_lado((_,_,_,_,_,pai),(_,_,celular,_,_,_),Sol), % 6
    entre((_,_,_,_,43,_),(azul,_,_,_,_,_),(_,_,notebook,_,_,_),Sol), % 7
    Sol = [_,_,_,(verde,_,_,_,_,_),_], % 8
    ao_lado((_,fernanda,_,_,_,_),(_,_,_,40,_,_),Sol), % 9
    ao_lado((_,_,notebook,_,_,_),(_,_,_,_,_,namorado),Sol), % 10
    entre((_,_,_,40,_,_),(_,_,_,_,31,_),(_,_,_,_,29,_),Sol), % 11
    before((azul,_,_,_,_,_),(_,_,_,_,_,pai),Sol), % 12
    ao_lado((_,_,_,40,_,_),(_,_,_,_,_,irmao),Sol), % 13
    ao_lado((branco,_,_,_,_,_),(_,_,_,50,_,_),Sol), % 14
    entre((_,_,_,_,_,irmao),(_,_,_,_,_,pai),(_,_,_,_,_,namorado),Sol), % 15
    member((_,marietta,_,_,31,_),Sol), % 16
    ao_lado((azul,_,_,_,_,_),(_,anita,_,_,_,_),Sol), % 17
    entre((_,_,_,70,_,_),(_,_,_,30,_,_),(_,_,_,_,_,pai),Sol), % 18
    ao_lado((verde,_,_,_,_,_),(_,_,_,_,_,tio),Sol), % 19
    Sol = [_,_,_,_,(_,clara,_,_,_,_)], % 20
    entre((azul,_,_,_,_,_),(_,_,_,_,22,_),(_,_,_,_,31,_),Sol), % 21
    nextto((_,_,_,_,_,marido),(branco,_,_,_,_,_),Sol), % 22
    % a seguir, adicionamos à lista os elementos que não foram falados nas frases
    member((_,rosana,_,_,_,_),Sol),
    member((_,_,tv,_,_,_),Sol),
    member((_,_,_,60,_,_),Sol),
    member((_,_,_,_,36,_),Sol).






    