:-dynamic obuveno/1, dveri/2, pozicija/1, stvar/2, ima/1, opisi/2, status/1, zakljucano/1, prviput/1, pripadnostKljucevima/2, puno/1.

:- retractall(pozicija(_)).
:- retractall(prostorija(_)).
:- retractall(stvar(_,_)).
:- retractall(ugaseno(_)).

:- op(30, fx, pokret).
:- op(30, fx, uzmi).
:- op(30, fx, baci).
:- op(30, fx, jedi).
:- op(30, fx, pij).
:- op(30, fx, upali).
:- op(30, fx, testiraj).
:- op(30, fx, procitaj).
:- op(30, fx, otkljucaj).
:- op(30, fx, obuj).
:- op(30, fx, izuj).
:- op(30, fx, ukljuci).
:- op(30, fx, iskljuci).
:- op(30, fx, napuni).

zaigrajmo(pokret X):-pokret(X),!.
zaigrajmo(uzmi X):-uzmi(X),!.
zaigrajmo(okolo):-okolo,!.
zaigrajmo(baci X):-baci(X),!.
zaigrajmo(napuni X):-napuni(X),!.
zaigrajmo(pij X):-pij(X),!.
zaigrajmo(testiraj X):-testiraj(X),!.
zaigrajmo(procitaj X):-procitaj(X),!.
zaigrajmo(jedi X):-jedi(X),!.
zaigrajmo(otkljucaj X):-otkljucaj(X),!.
zaigrajmo(obuj X):-obuj(X),!.
zaigrajmo(izuj X):-izuj(X),!.
zaigrajmo(ukljuci X):-ukljuci(X),!.
zaigrajmo(iskljuci X):-iskljuci(X),!.
zaigrajmo(inventar):-inventar,!.
zaigrajmo(ulovi):- ulovi,!.
zaigrajmo(nanogama):- nanogama,!.
zaigrajmo(kraj).

pocetak:-write('Jednoga dana zaspao sam na livadi i probudio se pored nekakve kuce. Ne znam gdje sam, mozda mi netko iz kuce moze pomoci.'),nl,
       nanogama,okolo, repeat,write('tvoj potez-> '),
       read(X),zaigrajmo(X),nl,kraj(X).

kraj(kraj):-write('Zar je tako grozna igra? ;-;').
kraj(_):-not(prviput(1)), pozicija(livada),write('Cestitamo! Uspjesno ste pobjegli iz Wonderlanda').

status(1).

prostorija(livada).
prostorija(ulaz).
prostorija(hodnik).
prostorija(malihodnik).
prostorija(mracnihodnik).
prostorija(prostorija1).
prostorija(prostorija2).
prostorija(prostorija3).
prostorija(stepenice).
prostorija(podrum).
prostorija(tajnaprostorija).

stvar(papuce, ulaz).
stvar(cizme, mracnihodnik).
stvar(kolacic1, hodnik).
stvar(kolacic2, hodnik).
stvar(kolacic3, hodnik).
stvar(kolacic4, hodnik).
stvar(mlijeko, hodnik).
stvar(ormar, prostorija1).
stvar(ogledalo, prostorija2).
stvar(ladica, prostorija2).
stvar(kljuc1, prostorija1).
stvar(kljuc2, prostorija1).
stvar(poruka, podrum).
stvar(baterijaDuracell, prostorija1).
stvar(baterijaPanasonic, prostorija3).
stvar(svjetiljka, prostorija2).

opisi(zec, opis('kljuc kojeg nosi', 5300)).
opisi(papuce, opis('mekane', 200)).
opisi(cizme, opis('gumene', 400)).
opisi(kolacic1, opis('mlijecna cokolada', 20)).
opisi(kolacic2, opis('bijela cokolada', 20)).
opisi(kolacic3, opis('crna cokolada', 20)).
opisi(kolacic4, opis('vanilija', 20)).
opisi(mlijeko, opis('bijelo', 100)).
opisi(ormar, opis('hrastovina', 50000)).
opisi(ogledalo, opis('veliko stakleno', 30000)).
opisi(kljuc1, opis('veliki zeljezni',200)).
opisi(kljuc2, opis('neobicni', 60)).
opisi(kljuc3, opis('mali metalni', 20)).
opisi(poruka, opis('vazna', 20)).
opisi(ladica, opis('stara drvena', 50000)).
opisi(baterijaDuracell, opis('AA', 100)).
opisi(baterijaPanasonic, opis('AA', 100)).
opisi(svjetiljka, opis('crna', 300)).

obuca(cipele).
obuca(papuce).
obuca(cizme).

obuveno(cipele).

dresscode(cipele, livada).
dresscode(cipele, ulaz).
dresscode(papuce, ulaz).
dresscode(papuce, hodnik).
dresscode(papuce, malihodnik).
dresscode(papuce, prostorija1).
dresscode(papuce, prostorija2).
dresscode(papuce, prostorija3).
dresscode(papuce, tajnaprostorija).
dresscode(papuce, mracnihodnik).
dresscode(cizme, mracnihodnik).
dresscode(cizme, stepenice).
dresscode(cizme, podrum).

dveri(livada, ulaz).
dveri(ulaz, hodnik).
dveri(hodnik, malihodnik).
dveri(malihodnik, prostorija1).
dveri(hodnik, prostorija2).
dveri(prostorija2, prostorija3).
%dveri(prostorija2, tajnaprostorija).
dveri(prostorija3, mracnihodnik).
dveri(mracnihodnik, stepenice).
dveri(stepenice, podrum).

zakljucano(prostorija2).
zakljucano(ladica).
zakljucano(tajnaprostorija).

pripadnostKljucevima(kljuc1, prostorija2).
pripadnostKljucevima(kljuc2, ladica).
pripadnostKljucevima(kljuc3, tajnaprostorija).

efekt(kolacic1, 2).
efekt(kolacic2, 0).
efekt(mlijeko, 1).

moramBitiVelik(livada, 1).
moramBitiVelik(ulaz, 1).
moramBitiVelik(hodnik, 1).
moramBitiVelik(hodnik, 0).
moramBitiVelik(hodnik, 2).
moramBitiVelik(malihodnik, 0).
moramBitiVelik(prostorija1, 0).
moramBitiVelik(prostorija2, 1).
moramBitiVelik(tajnaprostorija, 1).
moramBitiVelik(prostorija3, 1).
moramBitiVelik(mracnihodnik, 1).
moramBitiVelik(stepenice, 1).
moramBitiVelik(pordum, 1).

mozePojesti(kolacic1).
mozePojesti(kolacic2).
mozePojesti(kolacic3).
mozePojesti(kolacic4).

mozePopiti(mlijeko).

ugaseno(svjetiljka).

pozicija(livada).

puno(0).

napuni(svjetiljka):- ima(svjetiljka), ima(baterijaPanasonic), ima(baterijaDuracell), retract(ima(baterijaPanasonic)), retract(ima(baterijaDuracell)), retract(puno(_)), asserta(puno(1)), write('Napunio sam svjetiljku'),nl.
napuni(svjetiljka):- not(ima(svjetiljka)), write('Nemam svjetiljku kod sebe'), nl, fail.
napuni(svjetiljka):- ima(svjetiljka), write('Nemam baterije (potrebne su dvije za svjetiljku)'), nl, fail.

ukljuci(svjetiljka):- puno(X), X == 1, retract(ugaseno(svjetiljka)), asserta(upaljeno(svjetiljka)), write('Ukljucio sam svjetiljku.'), nl.
ukljuci(svjetiljka):- puno(X), X == 0, write('Svjetiljka nije napunjena'), nl, fail.

iskljuci(svjetiljka):- puno(X), X == 1, retract(upaljeno(svjetiljka)), asserta(ugaseno(svjetiljka)).
iskljuci(svjetiljka):- write('Svjetiljka nije bila ukljucena'), nl, fail.

jedi(X):- not(ima(X)), write('Nemam '), write(X), write(' kod sebe'), nl, !.
jedi(X):- ima(X), not(mozePojesti(X)), write('Ne mogu pojesti '), write(X), nl, !.
jedi(X):- ima(X), mozePojesti(X), efekt(X, E), status(S), S == E -> (write('Pojeo sam, ali nista se nije dogodilo'), nl,!);(efekt(X, E), E == 0->(
            write('Osjecam se cudno. Sve oko mene se povecava.'), nl, nl, write('CEKAJ MALO! PA JA SAM SE SMANJIO!'));(write('Osjecam se cudno. Sve oko mene se smanjuje.'),nl,nl, write('CEKAJ MALO! PA JA SAM SE POVECAO!'))), nl, efekt(X, E) , retract(status(_)), asserta(status(E)), fail.
            
pij(X):- ima(X), X == 'mlijeko', status(S), S \=1->(write('Cini se da se vracam u svoju normalnu velicinu'), retract(status(_)), asserta(status(1)));(write('Popio sam, ali nista se nije dogodilo.')), nl.
pij(X):- not(ima(X)), write('Nemam '), write(X), write(' kod sebe.'), nl, fail.
pij(X):- write('Ne mogu popiti '), write(X), nl, fail.

nanogama:- obuveno(Obuca), write('Na nogama nosim '), write(Obuca), nl.
nanogama:- not(obuveno(_)), write('Bos sam!'), nl.

obuj(Obuca):- not(obuveno(_)), retract(ima(Obuca)), asserta(obuveno(Obuca)), write('Obuo sam '), write(Obuca), nl, nanogama.
obuj(Obuca):- obuveno(X), ima(Obuca), write('Ne mogu obuti '), write(Obuca), write(' dok ne izujem '), write(X), nl.
obuj(Obuca):- not(obuveno(Obuca)), not(ima(Obuca)), write('Nemam '), write(Obuca), write(' kod sebe'), nl.

izuj(Obuca):- not(obuveno(Obuca)), write('Na nogama nemam '), write(Obuca), write(' nego '), obuveno(X), write(X), nl.
izuj(Obuca):- obuveno(Obuca), retract(obuveno(_)), asserta(ima(Obuca)), write('Izuo sam '), write(Obuca), nl, nanogama.

prolaz(X,Y):- dveri(X,Y); dveri(Y,X).

otkljucaj(ladica):- pozicija(Prostorija), stvar(ladica, Prostorija), ima(kljuc2), retract(zakljucano(ladica)), write('Otkljucao sam i otvorio ladicu. To nije ladica! To su stepenice...'), nl, write('I vode sve do ogledala').
otkljucaj(ladica):- pozicija(Prostorija), not(stvar(ladica, Prostorija)), write('Pa tu ni nema ladice...'), nl, fail.
otkljucaj(ladica):- pozicija(Prostorija), stvar(ladica,Prostorija), not(ima(kljuc2)), write('Nemam kljuc kojim bih otkljucao ladicu.'), nl, fail.
otkljucaj(Prostorija):- pozicija(X), prostorija(Prostorija), prolaz(X, Prostorija), zakljucano(Prostorija), pripadnostKljucevima(Kljuc, Prostorija), ima(Kljuc), retract(zakljucano(Prostorija)), retract(ima(Kljuc)), write('Otkljucao sam vrata za '), write(Prostorija),nl.
otkljucaj(Prostorija):- pozicija(X), prostorija(Prostorija), prolaz(X, Prostorija), not(zakljucano(Prostorija)), write('Prostorija nije zakljucana.'), nl, fail.
otkljucaj(Prostorija):- pozicija(X), not(prostorija(Prostorija)), prolaz(X, Prostorija), write('To nije prostorija.'), nl, fail.
otkljucaj(Prostorija):- pozicija(X), prostorija(Prostorija), not(prolaz(X,Prostorija)), write('Ne postoje vrata za '), write(Prostorija), nl, fail.

mogucnostProlaska(Mjesto):- pozicija(X), prolaz(X,Mjesto), obuveno(Obuca), dresscode(Obuca, Mjesto), not(zakljucano(Mjesto)), nl, !.
mogucnostProlaska(Mjesto):- pozicija(X), prolaz(X,Mjesto), dresscode(Obuca, Mjesto), not(zakljucano(Mjesto)), not(obuveno(Obuca)), write('Mogu proci dalje samo ako nadjem i obujem '), write(Obuca),nl, fail,!.
mogucnostProlaska(Mjesto):- pozicija(X), prolaz(X,Mjesto), zakljucano(Mjesto), write('Zakljucano je, moram prvo otkljucati.'), nl, fail,!.
mogucnostProlaska(Mjesto):- pozicija(X), not(prolaz(X,Mjesto)), write('Ne postoji prolaz do '), write(Mjesto), nl, fail, !.

prodi(Mjesto):- retract(pozicija(_)), asserta(pozicija(Mjesto)).

popisStvari(Prostorija):- stvar(X, Prostorija), opisi(X, opis(O,_)), write(O), write(' '), write(X),nl, fail.
popisStvari(_).

popisProlaska(Prostorija):- prolaz(Prostorija, X), write(X), nl, fail.
popisProlaska(_).

okolo:- pozicija(Tu), write('Trenutno se nalazite u '), write(Tu), nl, nl,
        write('Mozete vidjeti: '), nl, popisStvari(Tu), nl ,nl,
        write('Mozete proci do: '), nl, popisProlaska(Tu), nl.
okolo.

inventar:- write('Kod sebe imam:'),nl,stvari.
stvari:- ima(X), write(X), nl, fail.
stvari.

prviput(1).

zeko:- stvar(zec,_), nasumicno([ulaz, hodnik, malihodnik, prostorija1, prostorija2, tajnaprostorija, prostorija3, malihodnik, stepenice, podrum],1, Nova), member(X, Nova), retract(stvar(zec,_)),asserta(stvar(zec, X)).
zeko:- true.

pokret(tajnaprostorija):- mogucnostProlaska(tajnaprostorija), prodi(tajnaprostorija), prviput(1)->( retract(prviput(_)), write('OUCH! Zabio sam se u nesto.'), nl,nl, write('To je zec sa satom! Nosi nekakav kljuc oko vrata...'), nl,nl, write('I BJEZI!'), nl, write('Moram ga uhvatiti ako zelim svoj kljuc'), nl, write('Tko zna gdje je vec otisao i gdje ce sve pobjeci.'),
                          nasumicno([ulaz, hodnik, malihodnik, prostorija1, prostorija2, prostorija3, malihodnik, stepenice, podrum],1, Nova), member(X,Nova),
                          asserta(stvar(zec, X)));(zeko), okolo, nl.
                          
pokret(ulaz):- pozicija(livada), mogucnostProlaska(ulaz), prodi(ulaz), write('Usao sam i velika vrata su se odmah zatvorila iza mene.'), nl, asserta(zakljucano(livada)), asserta(pripadnostKljucevima(glavniKljuc ,livada)) , okolo,!.

pokret(X):- (X == 'mracnihodnik';X=='stepenice';X=='podrum'), pozicija(Y), prolaz(X,Y), obuveno(Z), dresscode(Z, X), not(ugaseno(svjetiljka)), prodi(X), okolo.
pokret(X):- (X == 'mracnihodnik';X=='stepenice';X=='podrum'), pozicija(Y), prolaz(X,Y), obuveno(Z), not(dresscode(Z, X)), dresscode(Obuca, X), write('Mogu proci dalje samo ako nadjem i obujem '), write(Obuca),nl, !.
pokret(X):- (X == 'mracnihodnik';X=='stepenice';X=='podrum'), pozicija(Y), prolaz(X,Y), ugaseno(svjetiljka), write('Moram pronaci neki izvor svjetlosti.'), nl,!.

pokret(Mjesto):- (Mjesto \= 'mracnihodnik',Mjesto\='stepenice',Mjesto\='podrum'), status(S), moramBitiVelik(Mjesto, S), zeko, mogucnostProlaska(Mjesto), prodi(Mjesto), okolo.
pokret(Mjesto):- status(S), pozicija(Y), prolaz(Mjesto,Y), not(moramBitiVelik(Mjesto, S)), S == 0, write('Premalen sam da bih prosao!'), nl, prostorija(Mjesto), nl.
pokret(Mjesto):- status(S), pozicija(Y), prolaz(Mjesto,Y), not(moramBitiVelik(Mjesto, S)), (S == 2; S ==1), write('Prevelik sam da bih prosao!'), nl,  prostorija(Mjesto), nl.
pokret(Mjesto):- pozicija(Y), not(prolaz(Mjesto,Y)), write('Ne postoji prolaz do '), write(Mjesto), nl, fail, !.

izbaci(X,[X|Xs],1,Xs).
izbaci(X,[Y|Xs],K,[Y|Ys]) :- K > 1,
   K1 is K - 1, izbaci(X,Xs,K1,Ys).

nasumicno(_,0,[]).
nasumicno(Xs,N,[X|Zs]) :- N > 0,
    length(Xs,L),
    I is random(L) + 1,
    izbaci(X,Xs,I,Ys),
    N1 is N - 1,
    nasumicno(Ys,N1,Zs).

uzmi(Predmet):- pozicija(Tu), stvar(Predmet, Tu), opisi(Predmet, opis(_, Y) ), Y=< 2000, retract(stvar(Predmet, Tu)), asserta(ima(Predmet)), write('Uzeo sam '), write(Predmet), nl.
uzmi(Predmet):- pozicija(Tu), stvar(Predmet, Tu), opisi(Predmet, opis(_, Y) ), Y > 2000, write('To je pretesko za mene. '), nl, fail.
uzmi(Predmet):- pozicija(Tu), not(stvar(Predmet, Tu)), write('Pa toga ni nema tu.'), nl, fail.

mogucnostBacanja(Predmet):-ima(Predmet).
mogucnostBacanja(Predmet):-write('Nemam '), write(Predmet), nl, fail.

pustiti(Predmet):- retract(ima(Predmet)), pozicija(X), asserta(stvar(Predmet,X)), write('Ispusteno!'), nl.

baci(Predmet):- mogucnostBacanja(Predmet), pustiti(Predmet).

ulovi:- pozicija(X), stvar(zec, X), asserta(ima(glavniKljuc)), write('Ulovio sam zeca i uzeo kljuc'), nl, fail.
ulovi:- pozicija(X), not(stvar(zec,X)), write('Nisam ulovio zeca'), nl.

procitaj(X):- ima(X), X == 'poruka', write('"Postoji nesto sto se zove lazno ogledalo."'),nl, write('"Ako priblizite prst ogledalu, mozete testirati ispravnost samog ogledala."'),nl, write('"Odraz vaseg prsta bi se trebao nastavljati na vrh vaseg prsta."'),nl, write('"Ako je kojim slucajem udaljeno, radi se o laznom ogledalu te ima nesto iza njega."'),nl, nl,
              write('Zacuo se zvuk metala kako udara o pod. Cini se da je u poruci bio kljuc. Pitam se kakva vrata samo otkljucava.'), nl, pozicija(Tu), asserta(stvar(kljuc3, Tu)), okolo, nl, fail.

procitaj(X):- not(ima(X)), write('Nemam '), write(X), write(' kod sebe.'), nl, fail.
procitaj(X):- ima(X), X \= 'poruka', write('Ne mogu procitati '), write(X), nl, fail.
              
testiraj(ogledalo):- pozicija(Tu), stvar(ogledalo, Tu), not(zakljucano(ladica)), write('Odraz prsta je puno udaljeniji od mog prsta. Ovo je sigurno lažno ogledalo! Nesto se nalazi iza njega. Cini se da je ovo kvaka...'), nl, write('AAAAAARGHHH!!! ZAKLJUCANO JE!'),nl, asserta(dveri(prostorija2, tajnaprostorija)), nl, !.
testiraj(ogledalo):- pozicija(Tu), not(stvar(ogledalo, Tu)), write('Ne vidim tu nikakvo ogledalo.'), asserta(testiranoOgledalo(1)), nl, fail.
testiraj(ogledalo):- pozicija(Tu), stvar(ogledalo, Tu), zakljucano(ladica), write('Ogledalo je previsoko da ga testiram, trebao bih se popesti do njega.'), nl, fail.
testiraj(X):- X \= 'ogledalo', write('Ne mogu testirati '), write(X), nl, fail.
testiraj(_).
