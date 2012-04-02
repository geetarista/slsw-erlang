%% ---
%%  Excerpted from "Seven Languages in Seven Weeks",
%%  published by The Pragmatic Bookshelf.
%%  Copyrights apply to this code. It may not be used to create training material,
%%  courses, books, articles, and the like. Contact us if you are in doubt.
%%  We make no guarantees that this code is fit for any purpose.
%%  Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
%%---

-module(matching_function).
-export([number/1]).

% Each function has what to match and what to run when called
% Calling number to match something not defined here will raise an exception
number(one)   -> 1;
number(two)   -> 2;
number(three) -> 3.
