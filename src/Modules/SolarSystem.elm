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
                [ span []
                    []
                ]
            ]
        , li [ classes [ "venus", "border", getPlanetBlurClass model PeersFamily ] ]
            [ a [ href "#venus" ]
                [ span []
                    []
                ]
            ]
        , li [ classes [ "earth", getPlanetBlurClass model SchoolsCommunity ], onClick (FocusOrganisation ChildrenServices) ]
            [ span []
                [ span [ class "moon" ]
                    []
                ]
            ]
        , li
            [ classes
                [ "mars"
                , getPlanetBlurClass model SchoolsCommunity
                ]
            ]
            [ span []
                []
            ]
        , li
            [ classes
                [ "asteroids_meteorids"
                , getPlanetBlurClass model SchoolsCommunity
                ]
            ]
            [ span []
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
            [ span [ class (getPlanetBlurClass model HealthHousingEmployabilitySafety) ]
                []
            ]
        , li [ classes [ "saturn", getPlanetBlurClass model HealthHousingEmployabilitySafety ], onClick (FocusOrganisation REACHteam) ]
            [ span []
                [ span [ class "ring" ]
                    [ text "" ]
                ]
            ]
        , li [ classes [ "uranus", "border", getPlanetBlurClass model CulturePolitics ] ]
            [ a [ href "#uranus" ]
                [ span [ classes [ "1", getPlanetBlurClass model CulturePolitics ] ]
                    []
                , span [ classes [ "2", getPlanetBlurClass model CulturePolitics ] ]
                    []
                ]
            ]
        , li [ classes [ "neptune", getPlanetBlurClass model CulturePolitics ] ]
            [ a [ href "#neptune" ]
                [ span []
                    []
                ]
            ]
        , li [ classes [ "pluto", getPlanetBlurClass model CulturePolitics ] ]
            [ a [ href "#pluto" ]
                [ span []
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
