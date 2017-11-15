module Modules.BottomNav exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


bottomNav : Model -> Html Msg
bottomNav model =
    ul [ class "fixed bottom-0 ma0 bg-black w-100 pa0 h3 flex justify-between db" ]
        [ navbarContent model ]



-- navbarLink : ( String, String ) -> Html Msg
-- navbarLink ( linkStr, name ) =
--     li [ class "list dib mh4 mv3" ]
--         [ a [ class "link dim white b", href ("/#" ++ linkStr) ]
--             [ img [ class "mw2 mh2 rotate-180", src "assets/arrow.png" ] []
--             ]
--         ]


navbarContent : Model -> Html Msg
navbarContent model =
    let
        navLinkBack =
            case model.route of
                HomeRoute ->
                    "home"

                Solar ->
                    "home"

                Organigram ->
                    "solar"

                Contact ->
                    "organigram"

                NotFound ->
                    "home"
    in
        li [ class "list dib mh4 mv3" ]
            [ a [ class "link #30white b dib", href ("/#" ++ navLinkBack) ]
                [ img [ class "mw2 mh2 myRotate", src "assets/arrow.png" ] []
                ]
            ]
