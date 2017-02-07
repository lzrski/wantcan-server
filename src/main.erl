-module(main).
-export(
  [ start/0
  , start/1
  ]
).

start() ->
  start([]).

start(Args) ->
  ok = helper:greeting(),
  erlang:halt(0).
