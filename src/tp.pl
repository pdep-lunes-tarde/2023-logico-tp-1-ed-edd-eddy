

honesto(ana).
honesto(roque).
ingeniera(ana).
contador(roque).
ambicioso(roque).
abogada(cecilia).

trabajoEnUtn(roque).
trabajoEnUtn(cecilia).

experiencia(Persona):-
    trabajoEnUtn(Persona).

puedeAndar(contaduria,Persona):-
    contador(Persona),honesto(Persona).

puedeAndar(ventas,Persona):-
    ambicioso(Persona), experiencia(Persona).

puedeAndar(ventas,lucia).


viveMansion(agatha).
viveMansion(carnicero).
viveMansion(charles).

odiaA(agatha, Alguien):-
    viveMansion(Alguien),
    Alguien \= carnicero.

odiaA(carnicero, Alguien):-
    odiaA(agatha, Alguien).

odiaA(charles, Alguien):-
    viveMansion(Alguien),
    not(odiaA(agatha, Alguien)).

esMasRicoQueAgatha(Alguien):-
    viveMansion(Alguien),
    not(odiaA(carnicero, Alguien)).

asesino(agatha, Asesino):-
    viveMansion(Asesino),
    odiaA(Asesino, agatha), 
    not(esMasRicoQueAgatha(Asesino)).
