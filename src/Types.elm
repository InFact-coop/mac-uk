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
    , focusedGroup : Maybe OrganisationGroup
    , focusedOrganisation : Maybe Organisation
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
