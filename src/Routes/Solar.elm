module Routes.Solar exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)
import Modules.SolarSystem exposing (..)


solar : Model -> Html Msg
solar model =
    let
        ( title, description ) =
            getOrganisationTitleAndDescription model.focusedOrganisation
    in
        section [ class "clearfix" ]
            [ footer [ class "footer dib" ]
                (List.map viewFooterButton
                    [ ( "Peers & Family", PeersFamily )
                    , ( "School, Community & Neighbourhood", SchoolsCommunity )
                    , ( "health, housing, employability & safety", HealthHousingEmployabilitySafety )
                    , ( "culture and politics", CulturePolitics )
                    ]
                )
            , solarSystem model
            , div [ class "ma3 fr" ]
                [ h4 [ class "f3 white pa2 ma0" ] [ text title ]
                , div [ class "f5 white pa2 db br2 translucent" ]
                    [ text description
                    , a [ class "db pa1", href "#organigram" ]
                        [ img [ src "https://iconmonstr.com/wp-content/g/gd/makefg.php?i=../assets/preview/2012/png/iconmonstr-info-6.png&r=255&g=255&b=255", class "mw2" ] [] ]
                    ]
                ]
            ]


viewFooterButton : ( String, OrganisationGroup ) -> Html Msg
viewFooterButton ( label, orgGroup ) =
    li [ class "dib pa2 ma2", onClick (FocusGroup orgGroup) ] [ text label ]


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
