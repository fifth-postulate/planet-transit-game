module Transit exposing (Model, create)


type alias Model =
    { fractionalSize : Float
    }


create : Float -> Model
create fractionalSize =
    { fractionalSize = fractionalSize }
