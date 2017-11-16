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
        div []
            [ section [ class "clearfix" ]
                [ section [ class "dib" ]
                    (List.map viewOrganisationButton
                        [ ( "Personal", PeersFamily, model )
                        , ( "Local", SchoolsCommunity, model )
                        , ( "National", HealthHousingEmployabilitySafety, model )
                        , ( "Cultural", CulturePolitics, model )

                        -- , ( "X", Nothing )
                        ]
                    )
                , solarSystem model
                ]
            , div [ class "ma3" ]
                [ h4 [ class "f3 white pa2 ma0" ] [ text title ]
                , p [ class "f5 white pa2 db br2 translucent" ]
                    [ text description
                    , a [ class "db pa1 br-100 bg-white w2 center h2 mt2 mb2", href "#organigram" ]
                        [ img [ src "./assets/organigram.svg", class "ma1" ] [] ]
                    ]
                ]
            ]


toggleOrganisationButtonStyle : Model -> OrganisationGroup -> List String
toggleOrganisationButtonStyle model orgGroup =
    case model.focusedGroup of
        Nothing ->
            [ "white", "bg-dark-green" ]

        Just focusedGroup ->
            if focusedGroup == orgGroup then
                [ "dark-green", "bg-white" ]
            else
                [ "white", "bg-dark-green" ]


viewOrganisationButton : ( String, OrganisationGroup, Model ) -> Html Msg
viewOrganisationButton ( label, orgGroup, model ) =
    li
        [ classes <| [ "dib", "pa3", "br-pill", "ma2" ] ++ (toggleOrganisationButtonStyle model orgGroup)
        , onClick (FocusGroup orgGroup)
        ]
        [ text label ]


getOrganisationTitleAndDescription : Maybe Organisation -> ( String, String )
getOrganisationTitleAndDescription focusedOrganisation =
    case focusedOrganisation of
        Nothing ->
            ( "", "" )

        Just focusedOrganisation ->
            case focusedOrganisation of
                Mother ->
                    ( "Mother", "" )

                Father ->
                    ( "Father", "" )

                Friend ->
                    ( "Friend", "" )

                ArtAgainstKnives ->
                    ( "Art Against Knives", "a young, award-winning charity working with London’s most isolated communities to prevent serious youth violence; through specialist, creative and consistent interventions." )

                WoodsideCentre ->
                    ( "Woodside Centre", "GP Surgery" )

                MacUK ->
                    ( "MAC-UK", "takes mental health services out of the clinic and into the community with young people for young people." )

                REACHService ->
                    ( "REACH Service", "Multi-lingual domestic violence/family abuse advice, advocacy and support based in an Accident and Emergency (A&E) department" )

                REACHSteering ->
                    ( "REACH Steering Group", "advised by a diverse steering group with various expertise in computing, history, archives, and project management" )

                GangCalling ->
                    ( "Gang Calling", "Local Authority Initiative" )

                BarnetCouncil ->
                    ( "Barnet Council", "Local Authority Team" )

                CCG ->
                    ( "CCG", "coordinate and support the 32 London Clinical Commissioning Groups" )

                HealthEducation ->
                    ( "Health Education England", "Supports the delivery of healthcare to patients in England" )

                OFSTED ->
                    ( "OFSTED", "inspect and regulate services that care for children and young people, and services providing education and skills for learners of all ages" )
