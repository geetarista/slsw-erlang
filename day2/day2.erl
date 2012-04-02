% Control structures

% case

Animal = "dog".
case Animal of
    "dog" -> underdog;
    "cat" -> thundercat
    end.

case Animal of
    "elephant" -> dumbo;
    _ -> something_else
end.

% if/else

if
    ProgramsTerminated > 0 ->
        success;
    ProgramsTerminated < 0 ->
        error
end.

% anonymous function

Negate = fun(I) -> -I end.

% applying functions to lists

Numbers = [1, 2, 3, 4].
lists:foreach(fun(Number) -> io:format("~p~n", [Number]) end, Numbers).

% simplified
Print = fun(X) -> io:format("~p~n", [X]) end.
lists:foreach(Print, Numbers).

lists:map(fun(X) -> X + 1 end, Numbers).

Small = fun(X) -> X < 3 end.
lists:filter(Small, Numbers).

lists:all(Small, [0, 1, 2]).
lists:all(Small, [0, 1, 2, 3]).

lists:any(Small, [0, 1, 2, 3]).
lists:any(Small, [3, 4, 5]).

lists:any(Small, []).
lists:all(Small, []).

lists:takewhile(Small, Numbers).
lists:dropwhile(Small, Numbers).
lists:takewhile(Small, [1, 2, 1, 4, 1]).
lists:dropwhile(Small, [1, 2, 1, 4, 1]).

lists:foldl(fun(X, Sum) -> X + Sum end, 0, Numbers).

Adder = fun(ListItem, SumSoFar) -> ListItem + SumSoFar end.

InitialSum = 0.
lists:foldl(Adder, InitialSum, Numbers).

% list comprehensions

Fibs = [1, 1, 2, 3, 5].
Double = fun(X) -> X * 2 end.
lists:map(Double, Fibs).
% equivalent with a list comprehension
[Double(X) || X <- Fibs].
% flat computation
[X * 2 || X <- [1, 1, 2, 3, 5]].

map(F, L) -> [ F(X) || X <- L].

Cart = [{pencil, 4, 0.25}, {pen, 1, 1.20}, {paper, 2, 0.20}].

WithTax = [{Product, Quantity, Price, Price * Quantity * 0.08} || {Product, Quantity, Price} <- Cart].

Cat = [{Product, Price} || {Product, _, Price} <- Cart].

DiscountedCat = [{Product, Price / 2} || {Product, Price} <- Cat].

[X || X <- [1, 2, 3, 4], X < 4, X > 1].

[{X, Y} || X <- [1, 2, 3, 4], X < 3, Y <- [5, 6]].
