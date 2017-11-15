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
            [ h1 [ class "f3 white pa2 ma2" ] [ text ("Structure of " ++ (displayOrganisation org) ++ " team") ]
            , div [ class "content" ]
                [ figure [ class "org-chart cf" ]
                    [ ul [ class "administration" ]
                        [ li []
                            [ ul [ class "director" ]
                                [ li []
                                    [ a [ href "#contact" ]
                                        [ span []
                                            [ text "Service Lead" ]
                                        ]
                                    , ul [ class "subdirector" ]
                                        [ li []
                                            [ a [ href "#contact" ]
                                                [ span []
                                                    [ text "Manager" ]
                                                ]
                                            ]
                                        ]
                                    , ul [ class "departments cf" ]
                                        [ li []
                                            [ a [ href "#contact" ]
                                                [ span []
                                                    [ text "Administration" ]
                                                ]
                                            ]
                                        , li [ class "department dep-a" ]
                                            [ a [ href "#contact" ]
                                                [ span []
                                                    [ text "Social Worker" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [ li [ class "section" ]
                                                    [ a [ href "#contact" ]
                                                        [ span []
                                                            [ text "Family Therapist" ]
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        , li [ class "department dep-b" ]
                                            [ a [ href "#contact" ]
                                                [ span []
                                                    [ text "Social Worker" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [ li [ class "section" ]
                                                    [ a [ href "#contact" ]
                                                        [ span []
                                                            [ text "Family Practitioner" ]
                                                        ]
                                                    ]
                                                , li [ class "section" ]
                                                    [ a [ href "#contact" ]
                                                        [ span []
                                                            [ text "Family Practitioner" ]
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        , li [ class "department dep-c" ]
                                            [ a [ href "#contact" ]
                                                [ span []
                                                    [ text "Social Worker" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [ li [ class "section cp-sizing" ]
                                                    [ a [ href "#contact", class "cp-sizing" ]
                                                        [ span []
                                                            [ text "Clinical Psychologist" ]
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        , li [ class "department dep-d" ]
                                            [ a [ href "#contact" ]
                                                [ span []
                                                    [ text "Social Worker" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [-- li [ class "section" ]
                                                 --     [ a [ href "#contact" ]
                                                 --         [ span []
                                                 --             [ text "Education Access Officer" ]
                                                 --         ]
                                                 --     ]
                                                ]
                                            ]
                                        , li [ class "department dep-e" ]
                                            [ a [ href "#contact" ]
                                                [ span []
                                                    [ text "Social Worker" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [ li [ class "section" ]
                                                    [ a [ href "#contact", class "aco-sizing" ]
                                                        [ span []
                                                            [ text "Education Access Officer" ]
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
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
