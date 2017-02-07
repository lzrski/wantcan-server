-module(events).
-export(
  [ state_goal/1
  ]
).

state_goal({ Date, Goal, Estimation  }) ->
  io:format("So, you want to ~s by ~s. Good luck!~n",
    [ Goal
    , iso_8601_fmt(Estimation)
    ]
  ).

% By courtesy of http://www2.erlangcentral.org/wiki/?title=Converting_Between_struct:time_and_ISO8601_Format
iso_8601_fmt({Year,Month,Day}) ->
  io_lib:format("~4.10.0B-~2.10.0B-~2.10.0B", [Year, Month, Day]).
