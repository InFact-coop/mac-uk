module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "MAC-UK's Solar Systems" ]
        ]
