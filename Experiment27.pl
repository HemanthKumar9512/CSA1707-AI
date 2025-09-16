% Sample graph edges
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(d, g).
edge(e, h).
edge(f, i).

% Since the graph is undirected, make edges bidirectional
connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(Y, X).

% BFS Algorithm
bfs(Start, Goal, Path) :-
    bfs([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

% If first path reaches the goal, success
bfs([[Goal|Rest]|_], Goal, [Goal|Rest]).

% Otherwise, extend the first path and continue
bfs([Path|Queue], Goal, Result) :-
    extend(Path, NewPaths),
    append(Queue, NewPaths, UpdatedQueue),
    bfs(UpdatedQueue, Goal, Result).

% Extend path by exploring neighbors
extend([Node|Rest], NewPaths) :-
    findall([NewNode, Node|Rest],
            (connected(Node, NewNode), \+ member(NewNode, [Node|Rest])),
            NewPaths).
