module Update exposing (..)

import Types exposing (..)


getPage : String -> Route
getPage hash =
    case hash of
        "#home" ->
            HomeRoute

        "#solar" ->
            Solar

        "#organigram" ->
            Organigram

        _ ->
            NotFound


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Change newInput ->
            ( { model | userInput = newInput }, Cmd.none )

        UrlChange location ->
            { model | route = (getPage location.hash) } ! [ Cmd.none ]

        FocusGroup orgGroup ->
            ( { model | focusedGroup = Just orgGroup }, Cmd.none )

        FocusOrganisation organisation ->
            ( { model | focusedOrganisation = Just organisation }, Cmd.none )
