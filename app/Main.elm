import Html exposing (..)
import Html.Attributes exposing (..)


listToShow : List String
listToShow = [ "hello", "world" ]


main =
  let
    inner =
      ul []
        [ li [] [ text "foo" ]
        , li [] [ text "bar" ]
        ]
  in
    div [class "container"]
      [
        div [class "row"] [ inner ]
      ]
