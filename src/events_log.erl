-module(events_log).
-export(
  [ read/0
  ]
).

read() ->
  file:consult("data/events.log").
