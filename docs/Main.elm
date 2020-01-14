import Html exposing (Html, fieldset, input, label, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick)
import Json.Decode exposing (Decoder, list, string, object2, (:=))


--nsaKeyWords : Decoder ( String, List String )
--nsaKeyWords =
--  object2 (,)
--    ("category" := string)
--    ("wordList" := list string)


--init : nsaKeyWords -> ( Model, Cmd Msg )
init: String -> ( Model, Cmd Msg )
init flags = ( model, Cmd.none )


main = Html.programWithFlags
  { init = init
  , subscriptions = subscriptions
  , view = view
  , update = update
  }


-- MODEL

-- port nsa : Signal List (String, List String)
nsa =
  [ ("The first", ["One", "Two"])
  , ("The second", ["One", "Two"])
  , ("The third", ["One", "Two"])
  , ("The fourth", ["One", "Two"])
  ]


type alias Model =
  { output : String
  , checked : List Bool
  }


model : Model
model =
  Model "Generated text goes here" (List.map (\_ -> True) [1..List.length nsa])


-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


-- VIEW

thingie title = checkbox ToggleCategory title

titles = List.map fst nsa


view : Model -> Html Msg
view model =
  fieldset []
    [ checkbox ToggleCategory "Howdy!" ]
    --List.map thingie titles


checkbox : msg -> String -> Html msg
checkbox msg name =
  label
    [ style [("padding", "20px")]
    ]
    [ input [ type_ "checkbox", onClick msg ] []
    , text name
    ]


-- UPDATE

type Msg
  = Regenerate
  | ToggleCategory


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Regenerate ->
      ({ model | output = "More other input thing" }, Cmd.none)

    ToggleCategory ->
      ({ model | output = "More other input thing" }, Cmd.none)
      -- { model | checked = not model.checked[1] }
