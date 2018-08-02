module AppMain.App exposing (main)

import AppMain.State exposing (init, update)
import AppMain.Types exposing (..)
import AppMain.View exposing (root)


main : Program Never Model Msg
main =
    App.program
        { init = init
        , view = root
        , update = update
        , subscriptions = (\m -> Sub.none)
        }
