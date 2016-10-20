import Html exposing (..)
import Html.Attributes exposing (..)


main =
    let
        inner = div [id "inner"] [h1 [class "text-center"] [text "hello flash of unstyled content"]]
        hero  = div [id "hero", class "jumbotron"] [inner]

    in
        div [id "outer", class "container"] [inner]
