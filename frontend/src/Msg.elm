module Msg exposing (Msg(..))

import Model exposing (Test)


type Msg
    = StartTests (List Test)
    | NewNumber Float
