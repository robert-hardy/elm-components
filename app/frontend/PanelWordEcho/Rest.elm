module PanelWordEcho.Rest exposing (..)

import Http
import Json.Decode as Json
import Task
import PanelWordEcho.Types exposing (..)


getReply =
    let
        url =
            "http://localhost:8080/echo"
    in
        Task.perform (\x -> Failed) Reply (Http.get decodeJSON url)


decodeJSON =
    Json.at [ "result" ] Json.string
