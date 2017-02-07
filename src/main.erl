-module(main).
-export(
  [ start/0
  , start/1
  ]
).

start() ->
  start([]).

start(Args) ->
  { ok, Terms } = events_log:read(),
  io:format("Here: ~w~n.", [ Terms ]),
  erlang:halt(0).
