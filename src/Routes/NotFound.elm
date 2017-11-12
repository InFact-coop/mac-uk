module Routes.NotFound exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


notFound : Html Msg
notFound =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "404" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "Sorry we could not find this page" ]
        ]
