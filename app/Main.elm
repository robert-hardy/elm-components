import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as App
import Http
import Json.Decode as Json
import Task


main =
  App.program
    { init = (Model listToShow, getListOfStrings)
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
  | NewList (List String)
  | Failed


update msg model =
  case msg of
    GetListOfStrings ->
      (model, getListOfStrings)
    NewList l ->
      (Model l, Cmd.none)
    otherwise ->
      (model, Cmd.none)


getListOfStrings =
  let
    url =
      "http://localhost:8080/list-of-strings"
  in
    Task.perform (\x -> Failed) NewList (Http.get decodeJSON url)


decodeJSON =
  Json.at ["result"] (Json.list Json.string)


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
