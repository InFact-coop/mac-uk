module Types exposing (..)

import Navigation


-- Model


type Route
    = HomeRoute
    | Solar
    | Organigram
    | Contact
    | NotFound


type alias Model =
    { route : Route
    , userInput : String
    , focusedNetwork : Maybe NetworkHub
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


type NetworkHub
    = Barnet
    | Havering
    | StChristophers
    | Islington
    | FutureHaringey


type Organisation
    = Mother
    | Father
    | Friend
    | ArtAgainstKnives
    | WoodsideCentre
    | MacUK
    | REACHService
    | REACHSteering
    | GangCalling
    | BarnetCouncil
    | CCG
    | HealthEducation
    | OFSTED



-- Update


type Msg
    = Change String
    | UrlChange Navigation.Location
    | FocusNetworkHub NetworkHub
    | FocusGroup OrganisationGroup
    | FocusOrganisation Organisation
    | EditContact Model
