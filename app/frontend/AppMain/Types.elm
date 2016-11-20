module AppMain.Types exposing (..)

import PanelWordEcho.Types
import PanelWordList.Types


type alias Model =
    { current_word : Maybe String
    }


type Msg
    = PanelWordEcho PanelWordEcho.Types.Msg
    | PanelWordList PanelWordList.Types.Msg
