module PanelWordList.Types exposing (..)


type alias Model =
    { list : List String
    }


type Msg
    = GetListOfStrings
    | NewList (List String)
    | Failed
    | WordSelected String
