module ToDoList.Rest exposing (..)


import Http
import Json.Decode as Json
import Task
import ToDoList.Types exposing (..)


getListOfStrings =
  let
    url =
      "http://localhost:8080/list-of-strings"
  in
    Task.perform (\x -> Failed) NewList (Http.get decodeJSON url)


decodeJSON =
  Json.at ["result"] (Json.list Json.string)
