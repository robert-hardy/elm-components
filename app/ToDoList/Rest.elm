module ToDoList.Rest exposing (..)


import ToDoList.Types exposing (..)


getListOfStrings =
  let
    url =
      "http://localhost:8080/list-of-strings"
  in
    Task.perform (\x -> Failed) NewList (Http.get decodeJSON url)


decodeJSON =
  Json.at ["result"] (Json.list Json.string)
