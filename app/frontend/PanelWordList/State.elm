module PanelWordList.State exposing (..)

import PanelWordList.Rest exposing (..)
import PanelWordList.Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( Model [], getListOfStrings )


update msg model =
    case msg of
        GetListOfStrings ->
            ( model, getListOfStrings )

        NewList l ->
            ( { model | list = l }, Cmd.none )

        WordSelected word ->
            let
                debug =
                    Debug.log "word selected" word
            in
                ( model, Cmd.none )

        otherwise ->
            ( model, Cmd.none )
