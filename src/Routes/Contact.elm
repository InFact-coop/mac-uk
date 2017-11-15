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
        "Keen to get more involved with the organisation, went to the last business meeting,"


contactItem : ( String, String, Bool ) -> Html Msg
contactItem ( field, data, bool ) =
    div []
        [ label [ class "db fw4 lh-copy f6  light-silver" ] [ text field ]
        , input
            [ classList
                [ ( "br2", True )
                , ( "pa2", True )
                , ( "mb2", True )
                , ( "input-reset", True )
                , ( "ba", True )
                , ( "b--light-silver", bool )
                , ( "light-silver", bool )
                , ( "bg-transparent", bool )
                , ( "w-80", True )
                , ( "measure", True )
                , ( "f6", True )
                ]
            , disabled bool
            , value data
            ]
            []
        ]


toggleContactButtonText : Bool -> String
toggleContactButtonText bool =
    if bool then
        "Edit"
    else
        "Save"


contactContent : ContactInfo -> Model -> List (Html Msg)
contactContent info model =
    List.map contactItem
        [ ( "Name:", info.name, model.contactEditDisabled )
        , ( "Job Title:", info.jobTitle, model.contactEditDisabled )
        , ( "Organisation:", info.organisation, model.contactEditDisabled )
        , ( "Key Point of Contact:", info.keyContact, model.contactEditDisabled )
        , ( "Primary Needs", info.primaryNeeds, model.contactEditDisabled )
        , ( "Email:", info.email, model.contactEditDisabled )
        , ( "Phone Number:", info.phoneNumber, model.contactEditDisabled )
        , ( "Interactions:", info.interactions, model.contactEditDisabled )
        ]
        ++ [ label [ class "db fw4 lh-copy f6  light-silver" ] [ text "Notes" ]
           , textarea
                [ classList
                    [ ( "br2", True )
                    , ( "dib", True )
                    , ( "pa2", True )
                    , ( "mb2", True )
                    , ( "input-reset", True )
                    , ( "ba", True )
                    , ( "b--light-silver", model.contactEditDisabled )
                    , ( "light-silver", model.contactEditDisabled )
                    , ( "bg-transparent", model.contactEditDisabled )
                    , ( "w-80", True )
                    , ( "measure", True )
                    , ( "f6", True )
                    ]
                , disabled model.contactEditDisabled
                , value info.notes
                ]
                []
           ]
        ++ [ input
                [ class "db center br2 mt2 b ph3 pv2 input-reset ba bg-transparent grow white f6"
                , type_ "button"
                , value <| toggleContactButtonText model.contactEditDisabled
                , onClick <| EditContact model
                ]
                []
           ]
