import Html exposing (..)
import Html.Attributes exposing (..)


listToShow : List String
listToShow = [ "hello", "world" ]


main =
  let
    inner =
      ul [] (List.map (\s -> li [] [ text s ]) listToShow)
  in
    div [class "container"]
      [
        div [class "row"] [ inner ]
      ]
