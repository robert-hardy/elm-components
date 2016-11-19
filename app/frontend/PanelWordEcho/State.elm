module PanelWordEcho.State exposing (..)

import PanelWordEcho.Rest exposing (..)
import PanelWordEcho.Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( Model [] 1, getListOfStrings )


update msg model =
    case msg of
        GetListOfStrings ->
            ( model, getListOfStrings )

        NewList l ->
            ( { model | list = l }, Cmd.none )

        otherwise ->
            ( model, Cmd.none )
