#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname fizzbuzz
%%%
%%% Usage
%%%
%%%    ./fizzbuzz.escript 10 324 40 0 20 3 4 5 112 15 18
%%%
main(Numbers) ->
  Results = [fizzbuzz(erlang:list_to_integer(N)) || N <- Numbers],
  io:fwrite(string:join(Results, ", ") ++ "~n").
  
fizzbuzz(0) -> erlang:integer_to_list(0);
fizzbuzz(N) when (N rem 3 == 0) and (N rem 5 == 0) -> "Fizz Buzz";
fizzbuzz(N) when (N rem 3) == 0 -> "Fizz";
fizzbuzz(N) when (N rem 5) == 0 -> "Buzz";
fizzbuzz(N) -> erlang:integer_to_list(N).
