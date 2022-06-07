

%diz todos os X2 e Y2 da tabela que estão no alcance de X1 e Y1 para o sapinho
in_jump_range((X1,Y1), (X2,Y2), Table) :-

                member((X2,Y2), Table), in_range((X1,Y1),(X2,Y2)).

 

in_range((X1,Y1), (X2,Y2)) :-

    (X1 == X2, Y1 + 3 >= Y2);

    (Y1 == Y2, X1 + 3 >= X2).

 

%connection((X1,Y1), (X2,Y2), Table)