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
                        [ text "Sun" ]
                    ]
                ]
            , li [ class <| "mercury" ++ (getPlanetBlurClass model PeersFamily) ]
                [ a [ href "#mercury" ]
                    [ span []
                        [ text "Mercury" ]
                    ]
                ]
            , li [ class <| "venus border" ++ (getPlanetBlurClass model PeersFamily) ]
                [ a [ href "#venus" ]
                    [ span []
                        [ text "Venus" ]
                    ]
                ]
            , li [ class <| "earth" ++ (getPlanetBlurClass model SchoolsCommunity) ]
                [ a [ href "#earth" ]
                    [ span []
                        [ text "Earth"
                        , span [ class "moon" ]
                            [ text "& Moon" ]
                        ]
                    ]
                ]
            , li [ class <| "mars" ++ (getPlanetBlurClass model SchoolsCommunity) ]
                [ a [ href "#mars" ]
                    [ span []
                        [ text "Mars" ]
                    ]
                ]
            , li [ class <| "asteroids_meteorids" ++ (getPlanetBlurClass model SchoolsCommunity) ]
                [ span []
                    [ text "Asteroids & Meteorids" ]
                ]
            , li [ class <| "jupiter border" ++ (getPlanetBlurClass model HealthHousingEmployabilitySafety) ]
                [ a [ href "#jupiter" ]
                    [ span [ class (getPlanetBlurClass model HealthHousingEmployabilitySafety) ]
                        [ text "Jupiter" ]
                    ]
                ]
            , li [ class <| "saturn" ++ (getPlanetBlurClass model HealthHousingEmployabilitySafety) ]
                [ a [ href "#saturn" ]
                    [ span []
                        [ text "Saturn & "
                        , span [ class "ring" ]
                            [ text "Ring" ]
                        ]
                    ]
                ]
            , li [ class <| "uranus border" ++ (getPlanetBlurClass model CulturePolitics) ]
                [ a [ href "#uranus" ]
                    [ span [ class <| "1" ++ (getPlanetBlurClass model CulturePolitics) ]
                        [ text "Uranus" ]
                    , span [ class <| "2" ++ (getPlanetBlurClass model CulturePolitics) ]
                        [ text "Uranus" ]
                    ]
                ]
            , li [ class <| "neptune" ++ (getPlanetBlurClass model CulturePolitics) ]
                [ a [ href "#neptune" ]
                    [ span []
                        [ text "Neptune" ]
                    ]
                ]
            , li [ class <| "pluto" ++ (getPlanetBlurClass model CulturePolitics) ]
                [ a [ href "#pluto" ]
                    [ span []
                        [ text "Pluto" ]
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
