module ToDoList.App exposing (main)


import Html.App as App
import ToDoList.Rest exposing (..)
import ToDoList.State exposing (..)
import ToDoList.Types exposing (..)
import ToDoList.View exposing (..)


main : Program Never
main =
  App.program
    { init = (Model [], getListOfStrings)
    , view = view
    , update = update
    , subscriptions = (\m -> Sub.none)
    }
