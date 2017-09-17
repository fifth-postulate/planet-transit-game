module Main exposing (..)

import Html
import Transit


main : Program Never Model msg
main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }


type alias Model =
    { target : Transit.Model
    , candidate : Transit.Model
    }


model : Model
model =
    { target = Transit.create 1.1
    , candidate = Transit.create 0.1
    }


update : msg -> Model -> Model
update _ model =
    model


view : Model -> Html.Html msg
view _ =
    Html.div []
        [ Html.div []
            [ Html.span [] [ Html.text "candidate" ]
            , Html.span [] [ Html.text (toString model.candidate.fractionalSize) ]
            ]
        , Html.div []
            [ Html.span [] [ Html.text "target" ]
            , Html.span [] [ Html.text (toString model.target.fractionalSize) ]
            ]
        ]


subscriptions : Sub msg
subscriptions =
    Sub.none
