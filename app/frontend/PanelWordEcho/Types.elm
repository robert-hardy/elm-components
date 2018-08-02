module PanelWordEcho.Types exposing (..)

import Http


type alias Model =
    { word : Maybe String
    , reply : Maybe String
    }


type Msg
    = GetReply
    | NewWord (Result Http.Error String)
