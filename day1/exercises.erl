% Exercises for end of Chapter 1

-module(exercises).
-export([words_in_string/1]).
-export([count_to_ten/1]).
-export([success_or_fail/1]).

% Return the number of words in a string
% Of course, not the best way to do this, but supposed to use recursion
words_in_string([]) -> 0.

% Count from one to ten
count_to_ten(1) -> io:fwrite("~B~n", [1]);
count_to_ten(N) when N < 11 ->
    count_to_ten(N-1), io:fwrite("~B~n", [N]);
count_to_ten(N) ->
    io:fwrite("I can't count to ~B--only 10~n", [N]).

% Return success or error based on input
success_or_fail(success) -> io:fwrite("success~n");
success_or_fail({error, Message}) -> io:fwrite("error: ~s~n", [Message]).
