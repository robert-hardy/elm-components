import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as App


main =
  App.program
    { init = (Model listToShow, Cmd.none)
    , view = view
    , update = (\msg -> (\m -> (m, Cmd.none)))
    , subscriptions = (\m -> Sub.none)
    }


type alias Model =
  { list: List String
  }


listToShow : List String
listToShow = [ "hello", "world" ]


view model =
  let
    theList =
      ul [class "list-group"] (List.map (\s -> li [class "list-group-item"] [ text s ]) model.list)
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
