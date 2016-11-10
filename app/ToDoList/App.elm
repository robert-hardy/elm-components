module ToDoList.App exposing (..)


import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as App
import Http
import Json.Decode as Json
import Task
import ToDoList.Types exposing (..)
import ToDoList.State exposing (..)
import ToDoList.View exposing (..)


main =
  App.program
    { init = (Model [], getListOfStrings)
    , view = view
    , update = update
    , subscriptions = (\m -> Sub.none)
    }
