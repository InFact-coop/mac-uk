module Types exposing (..)

import Navigation


-- Model


type Route
    = HomeRoute
    | PageOneRoute
    | PageTwoRoute
    | Solar


type alias Model =
    { route : Route
    , userInput : String
    , focusedGroup : Maybe OrganisationGroup
    }


type OrganisationGroup
    = PeersFamily
    | SchoolsCommunity
    | HealthHousingEmployabilitySafety
    | CulturePolitics



-- Update


type Msg
    = Change String
    | UrlChange Navigation.Location
    | FocusGroup OrganisationGroup
