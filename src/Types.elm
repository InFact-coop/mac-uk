module Types exposing (..)

import Navigation


-- Model


type Route
    = HomeRoute
    | Solar
    | Organigram
    | NotFound


type alias Model =
    { route : Route
    , userInput : String
    , focusedNetwork : Maybe NetworkHub
    , focusedGroup : Maybe OrganisationGroup
    , focusedOrganisation : Maybe Organisation
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
    = REACHteam
    | ChildrenServices
    | CommunityPartners
    | SocialCareDirect



-- Update


type Msg
    = Change String
    | UrlChange Navigation.Location
    | FocusNetworkHub NetworkHub
    | FocusGroup OrganisationGroup
    | FocusOrganisation Organisation
