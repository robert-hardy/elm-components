module PanelWordEcho.Types exposing (..)


type alias Model =
    { word : String
    , reply : Maybe String
    }


type Msg
    = GetReply
    | Reply String
    | Failed
