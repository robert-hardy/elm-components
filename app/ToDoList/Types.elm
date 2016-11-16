module ToDoList.Types exposing (..)


type alias Model =
  { list: List String
  , badge : Int
  }


type Msg
  = GetListOfStrings
  | NewList (List String)
  | Failed
