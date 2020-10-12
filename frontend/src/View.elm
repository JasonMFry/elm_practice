module View exposing (view)

import Html exposing (Html, button, h1, h2, li, main_, ol, p, span, text)
import Html.Events exposing (onClick)
import Model exposing (..)
import Msg exposing (..)


view : Model -> Html Msg
view model =
    main_ []
        [ h1 [] [ text "Tests" ]
        , button [ onClick <| StartTests model.tests ] [ text "Start Tests" ]
        , span []
            [ p [] [ text "passed: " ]
            , p [] [ text "failed: " ]
            , p [] [ text "running: " ]
            ]
        , h2 [] [ text "FINISHED!" ]
        , ol [] (List.map renderTest model.tests)
        ]


renderTest : Test -> Html msg
renderTest test =
    li [] [ span [] [ text (statusToString test.status ++ ":   "), text test.description ] ]



-- sortTests test1 test2 =
-- numberOfTestsInStatus : List Test -> Int
-- numberOfTestsInStatus tests =
