module ToDoList.App exposing (main)


import Html.App as App
import ToDoList.Rest exposing (..)
import ToDoList.State exposing (init, update)
import ToDoList.Types exposing (..)
import ToDoList.View exposing (root)


main : Program Never
main =
  App.program
    { init = init
    , view = root
    , update = update
    , subscriptions = (\m -> Sub.none)
    }
