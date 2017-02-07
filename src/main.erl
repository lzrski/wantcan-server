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
  lists:map(fun process_event/1, Terms),
  erlang:halt(0).

process_event({Type, Data}) ->
  apply(events, Type, [ Data ]).
