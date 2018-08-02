module PanelWordEcho.App exposing (main)

import PanelWordEcho.Rest exposing (..)
import PanelWordEcho.State exposing (init, update)
import PanelWordEcho.Types exposing (..)
import PanelWordEcho.View exposing (root)


main : Program Never Model Msg
main =
    App.program
        { init = init
        , view = root
        , update = update
        , subscriptions = (\m -> Sub.none)
        }
