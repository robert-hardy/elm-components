module AppMain.State exposing (..)

import AppMain.Types exposing (..)
import PanelWordEcho.Types
import PanelWordList.Rest
import PanelWordList.State
import PanelWordList.Types


init : ( Model, Cmd Msg )
init =
    let
        word_list_model =
            PanelWordList.Types.Model []

        word_echo_model =
            PanelWordEcho.Types.Model Nothing Nothing

        cmd =
            Cmd.map PanelWordList
                (PanelWordList.Rest.getListOfStrings)
    in
        ( Model Nothing word_list_model word_echo_model, cmd )


update msg model =
    case msg of
        PanelWordList msg ->
            let
                ( wl_model, cmds ) =
                    PanelWordList.State.update msg model.panel_word_list

                model =
                    { model | panel_word_list = wl_model }
            in
                case msg of
                    PanelWordList.Types.WordSelected s ->
                        let
                            model =
                                { model | current_word = Just s }
                        in
                            ( model
                            , Cmd.map PanelWordList cmds
                            )

                    otherwise ->
                        ( model
                        , Cmd.map PanelWordList cmds
                        )

        otherwise ->
            ( model, Cmd.none )
