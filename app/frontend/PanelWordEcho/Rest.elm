module PanelWordEcho.Rest exposing (..)

import Http
import Json.Decode as Json
import PanelWordEcho.Types exposing (..)


getReply : String -> Cmd Msg
getReply word =
    let
        url =
            "http://localhost:8080/echo/" ++ word

        request =
            Http.get url decodeJSON
    in
        Http.send NewWord request


decodeJSON =
    Json.at [ "result" ] Json.string
