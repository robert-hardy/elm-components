module AppMain.App exposing (main)

import Html
import AppMain.State exposing (init, update)
import AppMain.Types exposing (..)
import AppMain.View exposing (root)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = root
        , update = update
        , subscriptions = (\m -> Sub.none)
        }
