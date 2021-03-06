#!/usr/bin/env escript -c
%% -*- erlang -*-
%%! -pa apps/ec_chess/ebin -pa apps/ec_perftest/ebin

main([]) ->
    io:format("\n\n\nStart performance tests\n", []),
    io:format("**************************************************\n", []),

    io:format("\n************* ec_board tests\n"),
    ec_board_perftest:start(100000),
    io:format("\n************* ec_eval tests\n"),
    ec_eval_perftest:start(100000).
