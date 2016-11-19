module PanelWordEcho.Types exposing (..)


type alias Model =
    { word : String
    , reply : Maybe String
    }


type Msg
    = GetListOfStrings
    | NewList (List String)
    | Failed
