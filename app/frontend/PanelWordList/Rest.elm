module PanelWordList.Rest exposing (..)

import Http
import Json.Decode as Json
import PanelWordList.Types exposing (..)


getListOfStrings : String -> Cmd Msg
getListOfStrings =
    let
        url =
            "http://localhost:8080/list-of-strings"

        request =
            Http.get url decodeJSON
    in
        Http.send NewList


decodeJSON =
    Json.at [ "result" ] (Json.list Json.string)
