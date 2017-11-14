module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-60-ns center" ]
        [ a [ href "#solar", class "link black w5" ]
            [ div
                [ class "br-100 b--dark-grey w5 f4 h5 bg-light-pink flex items-center justify-center" ]
                [ text "Barnet REACH" ]
            ]
        , a [ href "#solar", class "link black w4" ]
            [ div
                [ class "br-100 b--dark-grey w4 f4 h4 bg-yellow flex items-center justify-center" ]
                [ text "LB Havering" ]
            ]
        , a [ href "#solar", class "link black w4" ]
            [ div
                [ class "br-100 b--dark-grey w4 f4 h4 bg-light-green flex items-center justify-center" ]
                [ text "St. Christopher's" ]
            ]
        , a [ href "#solar", class "link black w5" ]
            [ div
                [ class "br-100 b--dark-grey w5 f4 h5 bg-light-blue flex items-center justify-center" ]
                [ text "10/10 Islington" ]
            ]
        , a [ href "#solar", class "link black w5" ]
            [ div
                [ class "br-100 b--dark-grey w5 f4 h5 bg-light-yellow flex items-center justify-center" ]
                [ text "Future Haringey" ]
            ]
        ]
