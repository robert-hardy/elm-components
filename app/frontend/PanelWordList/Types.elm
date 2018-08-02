module PanelWordList.Types exposing (..)

import Http


type alias Model =
    { list : List String
    }


type Msg
    = GetListOfStrings
    | NewList (Result Http.Error (List String))
    | WordSelected String
