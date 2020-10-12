module Update exposing (update)

import Model exposing (..)
import Msg exposing (Msg(..))


update : Msg -> Model -> Model
update msg model =
    case msg of
        StartTests ->
            List.map (\m -> { m | status = Running }) model
