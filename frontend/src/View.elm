module View exposing (view)

import Html exposing (Html, button, h1, h2, li, main_, ol, p, span, text)
import Model exposing (..)


view : Model -> Html msg
view model =
    main_ []
        [ h1 [] [ text "Tests" ]
        , button [] [ text "Start Tests" ]
        , span []
            [ p [] [ text "passed: " ]
            , p [] [ text "failed: " ]
            , p [] [ text "running: " ]
            ]
        , h2 [] [ text "FINISHED!" ]
        , ol [] (List.map renderTest model)
        ]


renderTest : Test -> Html msg
renderTest test =
    li [] [ span [] [ text (statusToString test.status ++ ":   "), text test.description ] ]



-- sortTests test1 test2 =
--     todo
