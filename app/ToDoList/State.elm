module ToDoList.State exposing (..)


import ToDoList.Rest exposing (..)
import ToDoList.Types exposing (..)


update msg model =
  case msg of
    GetListOfStrings ->
      (model, getListOfStrings)
    NewList l ->
      (Model l, Cmd.none)
    otherwise ->
      (model, Cmd.none)
