module Model exposing (..)

import Types exposing (..)


model : Model
model =
    { route = HomeRoute
    , userInput = ""
    , focusedNetwork = Nothing
    , focusedGroup = Nothing
    , focusedOrganisation = Nothing
    }
