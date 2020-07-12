%ask10
katathetis(N , [ [N,P]|T] , P).
katathetis(N , [ [N1,P1]|T ] , P) :-
katathetis(N,T,P).



metafora([[N,P]|T],P).	

metafora([[N,P]|T],LH):-
	metafora(T,LN),
	LH is P + LN.
%ask8


encrypted_parts(Encrypted, Prefix, X, Y, Suffix, Final) :-
    append(Prefix, L1, Encrypted),
    L1 = [X, X | L2],
    append(Final, L3, L2),
    L3 = [Y, Y | L4],
    Suffix = L4.
	
decrypted_parts(Decrypted, Prefix, X, Y, Suffix, Final) :-
    append(Prefix, L1, Decrypted),
    L1 = [X, Y | L2],
    append(Suffix, L3, L2),
    Final = L3.	

cryp(Encrypted, Decrypted) :-
    encrypted_parts(Encrypted, Prefix, X, Y, Suffix, Final),
    decrypted_parts(Decrypted, Prefix, X, Y, Suffix, Final).
    
    % deite kai auto https://www.ic.unicamp.br/~meidanis/courses/mc336/2009s2/prolog/problemas/
