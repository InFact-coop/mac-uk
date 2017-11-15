module Routes.Contact exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


contact : ContactInfo -> Model -> Html Msg
contact info model =
    let
        htmlStuff =
            contactContent info model
    in
        Html.form [ class "w-80 pa2 center" ] htmlStuff


testDetails : ContactInfo
testDetails =
    ContactInfo "Sally Lude"
        "Manager"
        "REACHteam"
        "Philipa"
        "To help with info"
        "s.lude@reachteam.co.uk"
        "+44712345689"
        "Last meeting - 11/02"
        "Keen to get more involved"


contactItem : ( String, String, Bool ) -> Html Msg
contactItem ( field, data, bool ) =
    div []
        [ label [ class "db fw4 lh-copy f6" ] [ text field ]
        , input
            [ class "pa2 mb2 input-reset ba bg-transparent w-80 measure"
            , disabled bool
            , value data
            ]
            []
        ]


contactContent : ContactInfo -> Model -> List (Html Msg)
contactContent info model =
    List.map contactItem
        [ ( "Name:", info.name, model.contactEditDisabled )
        , ( "Job Title:", info.jobTitle, model.contactEditDisabled )
        , ( "Organisation:", info.organisation, model.contactEditDisabled )
        , ( "Key Point of Contact:", info.keyContact, model.contactEditDisabled )
        , ( "Primary Needs", info.primaryNeeds, model.contactEditDisabled )
        , ( "Email:", info.email, model.contactEditDisabled )
        , ( "Phone Number,", info.phoneNumber, model.contactEditDisabled )
        , ( "Interactions:", info.interactions, model.contactEditDisabled )
        , ( "MAC-UK Notes:", info.notes, model.contactEditDisabled )
        ]
        ++ [ input
                [ class " mt2 b ph3 pv2 input-reset ba bg-transparent grow white f6"
                , type_ "button"
                , value "Edit"
                , onClick <| EditContact model
                ]
                []
           ]
