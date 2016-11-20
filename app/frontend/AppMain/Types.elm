module AppMain.Types exposing (..)

import PanelWordEcho.Types
import PanelWordList.Types


type alias Model =
    { current_word : Maybe String
    , panel_word_list : PanelWordList.Types.Model
    , panel_word_echo : PanelWordEcho.Types.Model
    }


type Msg
    = PanelWordEcho PanelWordEcho.Types.Msg
    | PanelWordList PanelWordList.Types.Msg
