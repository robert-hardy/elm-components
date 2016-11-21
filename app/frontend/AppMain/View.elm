module AppMain.View exposing (..)

import Html exposing (..)
import Html.App
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import AppMain.Types exposing (..)
import PanelWordEcho.View
import PanelWordList.View


root model =
    let
        panelWordList =
            Html.App.map PanelWordList
                (PanelWordList.View.root
                    model.panel_word_list
                )

        panelWordEcho =
            Html.App.map PanelWordEcho
                (PanelWordEcho.View.root
                    model.panel_word_echo
                )
    in
        div [ class "container" ]
            [ panelWordList
            , panelWordEcho
            ]
