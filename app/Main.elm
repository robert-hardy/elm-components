import Html exposing (..)
import Html.Attributes exposing (..)


listToShow : List String
listToShow = [ "hello", "world" ]


main =
  let
    inner =
      ul [class "list-group"] (List.map (\s -> li [] [ text s ]) listToShow)
  in
    div [class "container"]
      [ panelHeading "A list"
      , div [] [ inner ]
      ]

panelHeading title =
  div
    [class "panel panel-default"]
    [
      div
        [class "panel-heading"]
        [
          div
            [class "panel-title"]
            [ h1 [] [ text title ] ]
        ]
    ]
