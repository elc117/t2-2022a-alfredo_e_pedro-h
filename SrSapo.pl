%https://olimpiada.ic.unicamp.br/static/extras/obi2021/provas/ProvaOBI2021_f3pj.pdf

in_jump_range((X1,Y1), (X2,Y2), Table) :-
    member((X2,Y2), Table), in_range((X1,Y1),(X2,Y2)).

in_range((X1,Y1), (X2,Y2)) :-
    (X1 == X2, Y1 + 3 >= Y2);
    (Y1 == Y2, X1 + 3 >= X2).

connection((X1,Y1), (XS, YS), [(X2,Y2)|[]], _) :-
    in_range((X1,Y1), (XS, YS)), (X2,Y2) = (XS, YS),!.

connection((X1,Y1), (XS, YS), [(X2,Y2)|Path], Table) :-
    in_jump_range((X1,Y1), (X2,Y2), Table),
    subtract(Table, [(X2,Y2)], TableRes),
    connection((X2,Y2), (XS, YS), Path, TableRes).
    
solucao((X1,Y1), (XS, YS), Path) :-
    Table = [(1,1),(4,2),(1,4),(3,4),(3,5),(4,5)],
	connection((X1,Y1),(XS, YS), Z, Table),
    Path = [(X1,Y1)|Z].
