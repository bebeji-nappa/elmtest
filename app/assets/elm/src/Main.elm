module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Http
import Html.Events exposing(..)

main =
  Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

type alias Model =
  { msg : String }

type Msg
  = NoMessage

init : String -> ( Model, Cmd msg )
init flags =
  ( { msg = flags }, Cmd.none )

update : Msg -> Model -> ( Model, Cmd msg)
update msg model =
  ( model, Cmd.none)

view : Model -> Html Msg
view model = 
  div [][
    h1 [][ text "Hello Elm!" ]
   ,h1 [][ text model.msg ]
  ]
  

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none