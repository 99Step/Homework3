-module(lesson3_task2).

-export([words/1]).

words(BinText) ->
  words(BinText, <<>>, []).

words(<<32, Rest/binary>>, Word, Acc) ->
  words(Rest, <<>>, [Word | Acc]);
words(<<X, Rest/binary>>, Word, Acc) ->
  words(Rest, <<Word/binary, X>>, Acc);
words(<<>>, Word, Acc) ->
  lists:reverse([Word | Acc]).