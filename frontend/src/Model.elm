module Model exposing (Model, Test, init, statusToString)


type alias Model =
    List Test


type alias Test =
    { description : String
    , status : TestStatus
    }


type TestStatus
    = NotStartedYet
    | Running
    | Passed
    | Failed


init : Model
init =
    [ { description = "commas are rotated properly", status = NotStartedYet }
    , { description = "exclamation points stand up straight", status = NotStartedYet }
    , { description = "run-on sentences don't run forever", status = NotStartedYet }
    , { description = "question marks curl down", status = NotStartedYet }
    , { description = "semicolons are adequately waterproof", status = NotStartedYet }
    , { description = "capital letters can do yoga", status = NotStartedYet }
    ]


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
