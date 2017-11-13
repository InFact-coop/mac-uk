module Routes.Organigram exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


organigram : Model -> Html Msg
organigram model =
    let
        org =
            model.focusedOrganisation
                |> Maybe.withDefault REACHteam
    in
        div [ class "w-60-ns center" ]
            [ h1 [ class "tc f1" ] [ text ("Structure of " ++ (displayOrganisation org) ++ " team") ]
            , p [ class "f3 w60 mh1 tc" ] [ text "hello" ]
            ]


displayOrganisation : Organisation -> String
displayOrganisation organisation =
    case organisation of
        REACHteam ->
            "LB Barnet leaving care REACH"

        ChildrenServices ->
            "LB Children Services"

        CommunityPartners ->
            "Communities"

        SocialCareDirect ->
            "Social Care Direct"
