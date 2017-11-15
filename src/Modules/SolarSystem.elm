module Modules.SolarSystem exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


solarSystem : Model -> Html Msg
solarSystem model =
    ul [ class "solarsystem" ]
        [ li [ classes [ "sun", getPlanetBlurClass model PeersFamily ] ]
            [ span []
                []
            ]
        , li [ classes [ "peers", getPlanetBlurClass model PeersFamily ] ]
            [ span [ class "small peers__1", onClick (FocusOrganisation Mother) ]
                []
            ]
        , li [ classes [ "peers", getPlanetBlurClass model PeersFamily ] ]
            [ span [ class "small peers__2", onClick (FocusOrganisation Father) ]
                []
            ]
        , li [ classes [ "peers", getPlanetBlurClass model PeersFamily ] ]
            [ span [ onClick (FocusOrganisation Friend), class "small peers__3" ]
                []
            ]
        , li [ classes [ "venus", "border", getOrbitBlurClass model [ PeersFamily, SchoolsCommunity ] ] ]
            [ span [ class "none" ]
                []
            ]
        , li [ classes [ "authority", getPlanetBlurClass model SchoolsCommunity ] ]
            [ span [ onClick (FocusOrganisation WoodsideCentre), class "medium authority__1" ]
                []
            , span [ onClick (FocusOrganisation REACHService), class "medium authority__2" ]
                []
            ]
        , li
            [ classes
                [ "voluntary__local"
                , getPlanetBlurClass model SchoolsCommunity
                ]
            ]
            [ span [ onClick (FocusOrganisation ArtAgainstKnives), class "large voluntary__local--1" ]
                []
            , span [ onClick (FocusOrganisation MacUK), class "large voluntary__local--2" ]
                []
            ]
        , li
            [ classes
                [ "jupiter"
                , "border"
                , getOrbitBlurClass model [ SchoolsCommunity, HealthHousingEmployabilitySafety ]
                ]
            ]
            [ span [ class "none" ]
                []
            ]
        , li [ classes [ "national", getPlanetBlurClass model HealthHousingEmployabilitySafety ] ]
            [ span [ onClick (FocusOrganisation REACHSteering), class "medium national__1" ]
                []
            , span [ onClick (FocusOrganisation GangCalling), class "medium national__2" ]
                []
            ]
        , li [ classes [ "uranus", "border", getOrbitBlurClass model [ HealthHousingEmployabilitySafety, CulturePolitics ] ] ]
            [ span [ classes [ "none", getPlanetBlurClass model CulturePolitics ] ]
                []
            ]
        , li [ classes [ "political", getPlanetBlurClass model CulturePolitics ] ]
            [ span [ onClick (FocusOrganisation BarnetCouncil), class "medium political__1" ]
                []
            , span [ onClick (FocusOrganisation CCG), class "medium political__2" ] []
            ]
        , li [ classes [ "pluto", getOrbitBlurClass model [ CulturePolitics ] ] ]
            [ span [ class "none" ]
                []
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
