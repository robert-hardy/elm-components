module AppMain.State exposing (..)

import AppMain.Types exposing (..)
import PanelWordEcho.Types
import PanelWordList.Types


init : ( Model, Cmd Msg )
init =
    let
        word_list_model =
            PanelWordList.Types.Model []

        word_echo_model =
            PanelWordEcho.Types.Model Nothing
    in
        ( Model Nothing word_list_model word_echo_model, Cmd.none )


update msg model =
    ( model, Cmd.none )
