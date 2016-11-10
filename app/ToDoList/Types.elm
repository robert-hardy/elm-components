module ToDoList.Types exposing (..)


type Msg
  = GetListOfStrings
  | NewList (List String)
  | Failed
