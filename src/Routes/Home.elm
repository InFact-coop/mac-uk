module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


home : Model -> Html Msg
home model =
    div [ class "flex mt5 items-center justify-around content-between flex-wrap pa3 w-60-ns" ]
        [ a
            [ class "bubble slow link ma3 br-100 db b--dark-grey w5 f4 h5 bg-light-pink flex items-center justify-center navy", href "#solar", onClick (FocusNetworkHub Barnet) ]
            [ text "Barnet REACH"
            ]
        , a
            [ class "bubble medium link ma3 br-100 db b--dark-grey w4 f4 h4 bg-yellow flex items-center justify-center navy", href "#solar", onClick (FocusNetworkHub Havering) ]
            [ text "LB Havering" ]
        , a
            [ class "bubble medium link ma3 br-100 db b--dark-grey w4 f4 h4 bg-light-green flex items-center justify-center navy", href "#solar" ]
            [ text "St. Christopher's" ]
        , a
            [ class "bubble fast link ma3 br-100 db b--dark-grey w5 f4 h5 bg-light-blue flex items-center justify-center navy", href "#solar" ]
            [ text "10/10 Islington" ]
        , a
            [ class "bubble slow link ma3 br-100 db b--dark-grey w5 f4 h5 bg-light-yellow flex items-center justify-center navy", href "#solar" ]
            [ text "Future Haringey" ]
        ]
