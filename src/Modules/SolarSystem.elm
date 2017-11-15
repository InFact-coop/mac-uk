module Modules.SolarSystem exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


solarSystem : Model -> Html Msg
solarSystem model =
    ul [ class "solarsystem" ]
        [ li [ classes [ "sun", getPlanetBlurClass model PeersFamily ] ]
            [ a [ href "#sun" ]
                [ span []
                    []
                ]
            ]
        , li [ classes [ "peers", getPlanetBlurClass model PeersFamily ] ]
            [ span [ class "small peers__1" ]
                []
            ]
        , li [ classes [ "peers", getPlanetBlurClass model PeersFamily ] ]
            [ span [ class "small peers__2" ]
                []
            ]
        , li [ classes [ "peers", getPlanetBlurClass model PeersFamily ] ]
            [ span [ class "small peers__3" ]
                []
            ]
        , li [ classes [ "venus", "border", getOrbitBlurClass model [ PeersFamily, SchoolsCommunity ] ] ]
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
                , getOrbitBlurClass model [ SchoolsCommunity, HealthHousingEmployabilitySafety ]
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
        , li [ classes [ "uranus", "border", getOrbitBlurClass model [ HealthHousingEmployabilitySafety, CulturePolitics ] ] ]
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
        , li [ classes [ "pluto", getOrbitBlurClass model [ CulturePolitics ] ] ]
            [ a [ href "#pluto" ]
                [ span [ class "none" ]
                    []
                ]
            ]
        ]


getOrbitBlurClass : Model -> List OrganisationGroup -> String
getOrbitBlurClass model orgGroups =
    case model.focusedGroup of
        Nothing ->
            ""

        Just focussedGroup ->
            if List.member focussedGroup orgGroups then
                ""
            else
                "blur"


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
