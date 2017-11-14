module Types exposing (..)

import Navigation


-- Model


type Route
    = HomeRoute
    | PageOneRoute
    | PageTwoRoute
    | Solar
    | Organigram
    | Contact
    | NotFound


type alias Model =
    { route : Route
    , userInput : String
    , focusedGroup : Maybe OrganisationGroup
    , focusedOrganisation : Maybe Organisation
    , contactEditDisabled : Bool
    }


type alias ContactInfo =
    { name : String
    , jobTitle : String
    , organisation : String
    , keyContact : String
    , primaryNeeds : String
    , email : String
    , phoneNumber : String
    , interactions : String
    , notes : String
    }


type OrganisationGroup
    = PeersFamily
    | SchoolsCommunity
    | HealthHousingEmployabilitySafety
    | CulturePolitics


type Organisation
    = REACHteam
    | ChildrenServices
    | CommunityPartners
    | SocialCareDirect



-- Update


type Msg
    = Change String
    | UrlChange Navigation.Location
    | FocusGroup OrganisationGroup
    | FocusOrganisation Organisation
    | EditContact Model
