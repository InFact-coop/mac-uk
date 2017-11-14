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
            , div [ class "content" ]
                [ figure [ class "org-chart cf" ]
                    [ ul [ class "administration" ]
                        [ li []
                            [ ul [ class "director" ]
                                [ li []
                                    [ a [ href "#" ]
                                        [ span []
                                            [ text "Director" ]
                                        ]
                                    , ul [ class "subdirector" ]
                                        [ li []
                                            [ a [ href "#" ]
                                                [ span []
                                                    [ text "Assistante Director" ]
                                                ]
                                            ]
                                        ]
                                    , ul [ class "departments cf" ]
                                        [ li []
                                            [ a [ href "#" ]
                                                [ span []
                                                    [ text "Administration" ]
                                                ]
                                            ]
                                        , li [ class "department dep-a" ]
                                            [ a [ href "#" ]
                                                [ span []
                                                    [ text "Department A" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [ li [ class "section" ]
                                                    [ a [ href "#" ]
                                                        [ span []
                                                            [ text "Section A1" ]
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        , li [ class "department dep-b" ]
                                            [ a [ href "#" ]
                                                [ span []
                                                    [ text "Department B" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [ li [ class "section" ]
                                                    [ a [ href "#" ]
                                                        [ span []
                                                            [ text "Section B1" ]
                                                        ]
                                                    ]
                                                , li [ class "section" ]
                                                    [ a [ href "#" ]
                                                        [ span []
                                                            [ text "Section B2" ]
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        , li [ class "department dep-c" ]
                                            [ a [ href "#" ]
                                                [ span []
                                                    [ text "Department C" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [ li [ class "section" ]
                                                    [ a [ href "#" ]
                                                        [ span []
                                                            [ text "Section C1" ]
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        , li [ class "department dep-d" ]
                                            [ a [ href "#" ]
                                                [ span []
                                                    [ text "Department D" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [ li [ class "section" ]
                                                    [ a [ href "#" ]
                                                        [ span []
                                                            [ text "Section D1" ]
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        , li [ class "department dep-e" ]
                                            [ a [ href "#" ]
                                                [ span []
                                                    [ text "Department E" ]
                                                ]
                                            , ul [ class "sections" ]
                                                [ li [ class "section" ]
                                                    [ a [ href "#" ]
                                                        [ span []
                                                            [ text "Section E1" ]
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
