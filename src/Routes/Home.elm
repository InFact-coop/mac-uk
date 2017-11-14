module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-60-ns center" ]
        [ a
            [ class "link br-100 db b--dark-grey w5 f4 h5 bg-light-pink flex items-center justify-center navy", href "#solar", onClick (FocusNetworkHub Barnet) ]
            [ text "Barnet REACH"
            ]
        , a
            [ class "link br-100 db b--dark-grey w4 f4 h4 bg-yellow flex items-center justify-center navy", href "#solar", onClick (FocusNetworkHub Havering) ]
            [ text "LB Havering" ]
        , a
            [ class "link br-100 db b--dark-grey w4 f4 h4 bg-light-green flex items-center justify-center navy", href "#solar" ]
            [ text "St. Christopher's" ]
        , a
            [ class "link br-100 db b--dark-grey w5 f4 h5 bg-light-blue flex items-center justify-center navy", href "#solar" ]
            [ text "10/10 Islington" ]
        , a
            [ class "link br-100 db b--dark-grey w5 f4 h5 bg-light-yellow flex items-center justify-center navy", href "#solar" ]
            [ text "Future Haringey" ]
        ]
