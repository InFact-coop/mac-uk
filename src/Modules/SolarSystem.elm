module Modules.SolarSystem exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


solarSystem : Model -> Html Msg
solarSystem model =
    ul [ class "solarsystem" ]
        [ li [ class "sun" ]
            [ a [ href "#sun" ]
                [ span []
                    []
                ]
            ]
        , li [ classes [ "mercury", getPlanetBlurClass model PeersFamily ] ]
            [ a [ href "#mercury" ]
                [ span [ class "small" ]
                    []
                ]
            ]
        , li [ classes [ "venus", "border", getPlanetBlurClass model PeersFamily ] ]
            [ a [ href "#venus" ]
                [ span [ class "none" ]
                    []
                ]
            ]
        , li [ classes [ "earth", getPlanetBlurClass model SchoolsCommunity ], onClick (FocusOrganisation ChildrenServices) ]
            [ span [ class "medium" ]
                []
            ]
        , li
            [ classes
                [ "mars"
                , getPlanetBlurClass model SchoolsCommunity
                ]
            ]
            [ span [ class "large" ]
                []
            ]
        , li
            [ classes
                [ "jupiter"
                , "border"
                , getPlanetBlurClass model HealthHousingEmployabilitySafety
                ]
            , onClick (FocusOrganisation SocialCareDirect)
            ]
            [ a [ href "#venus" ]
                [ span [ class "none" ]
                    []
                ]

            -- span [ classes [ "large", getPlanetBlurClass model HealthHousingEmployabilitySafety ] ]
            --     []
            ]
        , li [ classes [ "saturn", getPlanetBlurClass model HealthHousingEmployabilitySafety ], onClick (FocusOrganisation REACHteam) ]
            [ span [ class "medium" ]
                []
            ]
        , li [ classes [ "uranus", "border", getPlanetBlurClass model CulturePolitics ] ]
            [ a [ href "#uranus" ]
                [ span [ classes [ "none", getPlanetBlurClass model CulturePolitics ] ]
                    []
                ]
            ]
        , li [ classes [ "neptune", getPlanetBlurClass model CulturePolitics ] ]
            [ a [ href "#neptune" ]
                [ span [ class "medium" ]
                    []
                ]
            ]
        , li [ classes [ "pluto", getPlanetBlurClass model CulturePolitics ] ]
            [ a [ href "#pluto" ]
                [ span [ class "none" ]
                    []
                ]
            ]
        ]


getPlanetBlurClass : Model -> OrganisationGroup -> String
getPlanetBlurClass model orgGroup =
    case model.focusedGroup of
        Nothing ->
            ""

        Just focussedGroup ->
            if orgGroup == focussedGroup then
                ""
            else
                "blur"


classes : List String -> Attribute msg
classes cxs =
    class <| String.join " " cxs
