module AppMain.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import AppMain.Types exposing (..)


root model =
    case model.word of
        Nothing ->
            text ""

        Just w ->
            let
                panelWordList =
                    Html.map PanelWordList
                        PanelWordList.View.root
                        model.panel_word_list
            in
                div [ class "container" ]
                    [ panelWordList
                    , panelWordEcho
                    ]
