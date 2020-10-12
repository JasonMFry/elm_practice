module Update exposing (update)

update : Msg -> Model -> Model.Model
update msg model =
    case msg of
        NoOp ->
            model
