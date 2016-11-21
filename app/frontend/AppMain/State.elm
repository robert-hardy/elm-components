module AppMain.State exposing (..)

import AppMain.Types exposing (..)
import PanelWordEcho.Types
import PanelWordList.State
import PanelWordList.Types


init : ( Model, Cmd Msg )
init =
    let
        word_list_model =
            PanelWordList.Types.Model []

        word_echo_model =
            PanelWordEcho.Types.Model Nothing Nothing
    in
        ( Model Nothing word_list_model word_echo_model, Cmd.none )


update msg model =
    case msg of
        PanelWordList msg ->
            let
                ( wl_model, cmds ) =
                    PanelWordList.State.update msg model.panel_word_list
            in
                ( { model | panel_word_list = wl_model }
                , Cmd.map PanelWordList cmds
                )

        otherwise ->
            ( model, Cmd.none )
