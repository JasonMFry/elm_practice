module Main exposing (Msg(..), main, update)

import Browser
import Html exposing (Html, main_, text)


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { str : String
    , int : Int
    }


init : Model
init =
    { str = "init", int = 0 }


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model


view : Model -> Html msg
view model =
    main_ [] [ text model.str, text " ", text <| String.fromInt model.int ]
