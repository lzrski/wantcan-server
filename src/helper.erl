-module(helper).
-export(
  [ greeting/0
  ]
).

greeting() ->
  io:format("Hello!~n"),
  ok.
