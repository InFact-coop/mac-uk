module Routes.Solar exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


solar : Model -> Html Msg
solar model =
    let
        ( title, description ) =
            getOrganisationTitleAndDescription model.focusedOrganisation
    in
        section [ class "clearfix" ]
            [ div [ class "ma3 fr dn" ]
                [ h4 [ class "f3 white pa2" ] [ text title ]
                , p [ class "f5 white pa2" ]
                    [ text description
                    , a [ href "#organigram" ]
                        [ img [ src "https://iconmonstr.com/wp-content/g/gd/makefg.php?i=../assets/preview/2012/png/iconmonstr-info-6.png&r=255&g=255&b=255", class "mw2" ] [] ]
                    ]
                ]
            , ul [ class "solarsystem" ]
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
                "blur"


classes : List String -> Attribute msg
classes cxs =
    class <| String.join " " cxs


getOrganisationTitleAndDescription : Maybe Organisation -> ( String, String )
getOrganisationTitleAndDescription focusedOrganisation =
    case focusedOrganisation of
        Nothing ->
            ( "", "" )

        Just focusedOrganisation ->
            case focusedOrganisation of
                REACHteam ->
                    ( "REACH team", " a multi-professional and multi-disciplinary team with expertise in safeguarding, mental health, parenting, education and learning, health and communication to jointly assess, plan and intervene with young people presenting with high risk/high vulnerability" )

                ChildrenServices ->
                    ( "Barnet Children and Young People Plan", "A partnership with children, young people and different organisations that has produced a new child-friendly plan for 2016 - 2020 that reflects the priorities, needs and aspirations of the local population." )

                CommunityPartners ->
                    ( "Communities", "to be continued" )

                SocialCareDirect ->
                    ( "Social Care Direct", "For adults with social care needs and their carers, advice and information about adult social care services and safeguarding alerts" )
