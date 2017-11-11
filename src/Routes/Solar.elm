module Routes.Solar exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


solar : Model -> Html Msg
solar model =
    section [ class "clearfix" ]
        [ ul [ class "solarsystem" ]
            [ li [ class "sun" ]
                [ a [ href "#sun" ]
                    [ span []
                        []
                    ]
                ]
            , li [ class <| "mercury" ++ (getPlanetBlurClass model PeersFamily) ]
                [ a [ href "#mercury" ]
                    [ span []
                        []
                    ]
                ]
            , li [ class <| "venus border" ++ (getPlanetBlurClass model PeersFamily) ]
                [ a [ href "#venus" ]
                    [ span []
                        []
                    ]
                ]
            , li [ class <| "earth" ++ (getPlanetBlurClass model SchoolsCommunity), onClick (FocusOrganisation ChildrenServices) ]
                [ span []
                    [ span [ class "moon" ]
                        []
                    ]
                , div []
                    [ div []
                        (if model.focusedOrganisation == Just ChildrenServices then
                            [ h4 [ class "f4" ] [ text "Barnet Children and Young People Plan" ]
                            , p [ class "f5" ] [ text "A partnership with children, young people and different organisations that has produced a new child-friendly plan for 2016 - 2020 that reflects the priorities, needs and aspirations of the local population." ]
                            ]
                         else
                            []
                        )
                    ]
                ]
            , li [ class <| "mars" ++ (getPlanetBlurClass model SchoolsCommunity) ]
                [ span []
                    []
                ]
            , li [ class <| "asteroids_meteorids" ++ (getPlanetBlurClass model SchoolsCommunity) ]
                [ span []
                    []
                ]
            , li [ class <| "jupiter border" ++ (getPlanetBlurClass model HealthHousingEmployabilitySafety), onClick (FocusOrganisation SocialCareDirect) ]
                [ span [ class (getPlanetBlurClass model HealthHousingEmployabilitySafety) ]
                    []
                ]
            , div []
                [ div []
                    (if model.focusedOrganisation == Just SocialCareDirect then
                        [ h4 [ class "f4" ] [ text "Social Care Direct" ]
                        , p [ class "f5" ] [ text "For adults with social care needs and their carers, advice and information about adult social care services and safeguarding alerts" ]
                        ]
                     else
                        []
                    )
                ]
            , li [ class <| "saturn" ++ (getPlanetBlurClass model HealthHousingEmployabilitySafety), onClick (FocusOrganisation REACHteam) ]
                [ span []
                    [ span [ class "ring" ]
                        [ text "" ]
                    ]
                , div []
                    [ div []
                        (if model.focusedOrganisation == Just REACHteam then
                            [ h4 [ class "f4" ] [ text "REACH team" ]
                            , p [ class "f5" ] [ text " a multi-professional and multi-disciplinary team with expertise in safeguarding, mental health, parenting, education and learning, health and communication to jointly assess, plan and intervene with young people presenting with high risk/high vulnerability" ]
                            ]
                         else
                            []
                        )
                    ]
                ]
            , li [ class <| "uranus border" ++ (getPlanetBlurClass model CulturePolitics) ]
                [ a [ href "#uranus" ]
                    [ span [ class <| "1" ++ (getPlanetBlurClass model CulturePolitics) ]
                        []
                    , span [ class <| "2" ++ (getPlanetBlurClass model CulturePolitics) ]
                        []
                    ]
                ]
            , li [ class <| "neptune" ++ (getPlanetBlurClass model CulturePolitics) ]
                [ a [ href "#neptune" ]
                    [ span []
                        []
                    ]
                ]
            , li [ class <| "pluto" ++ (getPlanetBlurClass model CulturePolitics) ]
                [ a [ href "#pluto" ]
                    [ span []
                        []
                    ]
                ]
            ]
        , footer [ class "footer dib" ]
            (List.map viewFooterButton
                [ ( "Peers & Family", PeersFamily )
                , ( "School, Community & Neighbourhood", SchoolsCommunity )
                , ( "health, housing, employability & safety", HealthHousingEmployabilitySafety )
                , ( "culture and politics", CulturePolitics )
                ]
            )
        ]


viewFooterButton : ( String, OrganisationGroup ) -> Html Msg
viewFooterButton ( label, orgGroup ) =
    li [ class "dib pa2 ma2", onClick (FocusGroup orgGroup) ] [ text label ]


getPlanetBlurClass : Model -> OrganisationGroup -> String
getPlanetBlurClass model orgGroup =
    case model.focusedGroup of
        Nothing ->
            ""

        Just focussedGroup ->
            if orgGroup == focussedGroup then
                ""
            else
                " blur "
