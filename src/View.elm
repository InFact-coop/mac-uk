module View exposing (..)

import Html exposing (..)


-- My Elm Files

import Types exposing (..)
import Routes.Home exposing (..)
import Routes.PageOne exposing (..)
import Routes.PageTwo exposing (..)
import Routes.Solar exposing (..)
import Routes.Organigram exposing (..)
import Routes.NotFound exposing (..)
import Routes.Navbar exposing (..)
import Routes.Contact exposing (..)


view : Model -> Html Msg
view model =
    let
        page =
            case model.route of
                HomeRoute ->
                    home model

                PageOneRoute ->
                    pageOne model

                PageTwoRoute ->
                    pageTwo model

                Solar ->
                    solar model

                Organigram ->
                    organigram model

                Contact ->
                    contact testDetails model

                NotFound ->
                    notFound
    in
        div []
            [ navbar model
            , page
            ]
