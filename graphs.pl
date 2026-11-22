
% Lab 10 - Graphs
% Task 1: Find paths between cities

% Directed edges
edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').

edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').

edge('Tabuk', 'Taif').
edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').

edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').

edge('Dammam', 'Qatif').
edge('Qatif', 'Dammam').
edge('Qatif', 'Madinah').

% Find a path between two cities
travel(From, To, Path) :-
    path(From, To, [From], ReversePath),
    reverse(ReversePath, Path).

% Destination reached
path(To, To, Visited, Visited).

% Continue through unvisited cities
path(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    path(Next, To, [Next|Visited], Path).
