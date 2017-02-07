-module(main).

-export(
  [ main/1
  ]
).

main(Args) ->
  io:format("Hello, ~w~n", [ Args ]),
  erlang:halt(0).
