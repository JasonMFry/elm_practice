module Update exposing (update)

import Model exposing (..)
import Msg exposing (Msg(..))
import Random


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        StartTests ts ->
            let
                tests =
                    List.map (\t -> { t | status = Running }) ts
            in
            ( { tests = tests, randomNumber = 0 }, Cmd.none )

        NewNumber float ->
            ( { model | randomNumber = float }, Random.generate NewNumber zeroToOne )



-- Should probably use `spawn` to do these async. Plus add a timeout so tests
-- can't take forever, at which point use `kill`


runTest : Test -> Float -> TestStatus
runTest test randomFloat =
    let
        delay =
            7000.0 + (randomFloat * 7000)
    in
    Running


zeroToOne : Random.Generator Float
zeroToOne =
    Random.float 0 1
