module PanelWordList.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import PanelWordList.Types exposing (..)


root model =
    let
        panelHeader =
            div
                [ class "panel-heading" ]
                [ div
                    [ class "panel-title" ]
                    [ h1 [] [ text "A list of words" ] ]
                ]

        panelBody =
            div
                [ class "panel-body" ]
                [ text "Each word is clickable" ]

        panelList =
            ul [ class "list-group" ]
                (List.map
                    (\s ->
                        li
                            [ class "list-group-item"
                            , style [ ( "cursor", "pointer" ) ]
                            ]
                            [ span [ onClick (WordSelected s) ]
                                [ code [] [ text s ] ]
                            ]
                    )
                    model.list
                )
    in
        div [ class "container" ]
            [ div [ class "panel panel-default" ]
                [ panelHeader
                , panelBody
                , panelList
                ]
            ]
