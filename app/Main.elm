import Html exposing (..)
import Html.Attributes exposing (..)


listToShow : List String
listToShow = [ "hello", "world" ]


main =
  let
    theList =
      ul [class "list-group"] (List.map (\s -> li [class "list-group-item"] [ text s ]) listToShow)
  in
    div [class "container"]
      [ panel "A list" theList
      ]


panel title content =
  let
    panelHeading title =
      div
        [class "panel-heading"]
        [
          div
            [class "panel-title"]
            [ h1 [] [ text title ] ]
        ]
  in
    div
      [class "panel panel-default"]
      [ panelHeading title
      , content
      ]
