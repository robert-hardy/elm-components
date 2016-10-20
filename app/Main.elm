import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as App


main =
  App.program
    { init = (Model listToShow, Cmd.none)
    , view = view
    , update = update
    , subscriptions = (\m -> Sub.none)
    }


type alias Model =
  { list: List String
  }


listToShow : List String
listToShow = [ "hello", "world" ]


type Msg
  = GetListOfStrings
  | NewString (List String)


update msg model =
  case msg of
    GetListOfStrings ->
      (model, Cmd.none)
    otherwise ->
      (model, Cmd.none)


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
