module Main exposing (main)

import Browser
import Model exposing (Model, init)
import Msg exposing (Msg)
import Update exposing (update)
import View exposing (view)


main : Program () Model Msg
main =
    Browser.element { init = init, update = update, view = view, subscriptions = subscriptions }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
