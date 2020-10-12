module Model exposing (Model, Test, TestStatus(..), init, statusToString)


type alias Model =
    { tests : List Test
    , randomNumber : Float
    }


type alias Test =
    { description : String
    , status : TestStatus
    }


type TestStatus
    = NotStartedYet
    | Running
    | Passed
    | Failed


init : () -> ( Model, Cmd msg )
init _ =
    ( { tests =
            [ { description = "commas are rotated properly", status = NotStartedYet }
            , { description = "exclamation points stand up straight", status = NotStartedYet }
            , { description = "run-on sentences don't run forever", status = NotStartedYet }
            , { description = "question marks curl down", status = NotStartedYet }
            , { description = "semicolons are adequately waterproof", status = NotStartedYet }
            , { description = "capital letters can do yoga", status = NotStartedYet }
            ]
      , randomNumber = 0
      }
    , Cmd.none
    )


statusToString : TestStatus -> String
statusToString st =
    case st of
        NotStartedYet ->
            "Not Started Yet"

        Running ->
            "Running"

        Passed ->
            "Passed"

        Failed ->
            "Failed"
