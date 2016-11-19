module PanelWordEcho.State exposing (..)

import PanelWordEcho.Rest exposing (..)
import PanelWordEcho.Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( Model "Hello" Nothing, Cmd.none )


update msg model =
    case msg of
        GetReply ->
            ( model, getReply model.word )

        otherwise ->
            ( model, Cmd.none )
