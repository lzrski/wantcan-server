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


iso_8601_fmt({Year,Month,Day}) ->
  io_lib:format("~4.10.0B-~2.10.0B-~2.10.0B", [Year, Month, Day]).
