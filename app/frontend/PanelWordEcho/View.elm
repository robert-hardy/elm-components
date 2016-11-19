module PanelWordEcho.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import PanelWordEcho.Types exposing (..)


root model =
    let
        the_word =
            case model.word of
                Nothing ->
                    "No word supplied"

                Just w ->
                    w

        reply_section =
            case model.word of
                Nothing ->
                    text ""

                otherwise ->
                    case model.reply of
                        Nothing ->
                            ul [ class "list-group" ]
                                [ li [ class "list-group-item" ]
                                    [ button
                                        [ class "btn btn-primary"
                                        , onClick GetReply
                                        ]
                                        [ text "Get the reply" ]
                                    ]
                                ]

                        Just reply ->
                            ul [ class "list-group" ]
                                [ li [ class "list-group-item" ] [ text reply ]
                                ]
    in
        div [ class "container" ]
            [ panel "Word echo" the_word reply_section
            ]


panel title word reply_section =
    let
        panelHeading title =
            div
                [ class "panel-heading" ]
                [ div
                    [ class "panel-title" ]
                    [ h1 [] [ text title ] ]
                ]

        panelBody word =
            div
                [ class "panel-body" ]
                [ code [] [ text word ]
                ]
    in
        div
            [ class "panel panel-default" ]
            [ panelHeading title
            , panelBody word
            , reply_section
            ]