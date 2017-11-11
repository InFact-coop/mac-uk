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
    }



-- Update


type Msg
    = Change String
    | UrlChange Navigation.Location
