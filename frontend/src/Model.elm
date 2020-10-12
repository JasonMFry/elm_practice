module Model exposing (Model, init)


type alias Model =
    { str : String
    , int : Int
    }


init : Model
init =
    { str = "init", int = 1 }
