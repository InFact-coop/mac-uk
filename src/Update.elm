module Update exposing (..)

import Types exposing (..)


getPage : String -> Route
getPage hash =
    case hash of
        "#home" ->
            HomeRoute

        "#pageone" ->
            PageOneRoute

        "#pagetwo" ->
            PageTwoRoute

        "#solar" ->
            Solar

        "#organigram" ->
            Organigram

        "#contact" ->
            Contact

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

        EditContact oldModel ->
            ( { model | contactEditDisabled = not oldModel.contactEditDisabled }, Cmd.none )
