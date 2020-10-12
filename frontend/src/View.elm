module View exposing (view)

import Html exposing (Html, main_, text)
import Model exposing (Model)


view : Model -> Html msg
view model =
    main_ [] [ text model.str, text " ", text <| String.fromInt model.int ]
