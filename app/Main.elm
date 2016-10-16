import Html exposing (..)
import Html.Attributes exposing (..)


stylesheet =
    let
        tag = "link"
        attrs =
            [ attribute "rel"       "stylesheet"
            , attribute "property"  "stylesheet"
            , attribute "href"      "//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
            ]
        children = []
    in
        node tag attrs children


main =
    let
        inner = div [id "inner", class "container"] [h1 [class "text-center"] [text "hello flash of unstyled content"]]
        hero  = div [id "hero", class "jumbotron"] [inner]

    in
        div [id "outer"] [stylesheet, hero]
