module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-60-ns center" ]
        [ div
            [ class "br-100 b--dark-grey w3 h3 bg-light-pink" ]
            [ text "hello" ]
        ]
