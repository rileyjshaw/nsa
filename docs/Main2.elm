import Dict
import Html exposing (Html, text)
import Json.Decode as Decode exposing (..)

main : Html
main =



view : String -> Html
view json =
  case parse json of
    Ok value ->
      text value
    Err msg ->
      text ("An error was encountered: " ++ msg)


parse : String -> Result String (Dict.Dict String Int)
parse json =
  decodeString (dict int) json


json : String
json =
  """
  {
    "Domestic Security": [
      "assassination",
      "attack",
      "authorities",
      "bomb squad",
      "bomb threat",
      "bomb",
      "breach",
      "cops",
      "crash",
      "deaths",
      "dirty bomb",
      "disaster assistance",
      "disaster management",
      "disaster medical assistance team",
      "DMAT",
      "DNDO",
      "Domestic Nuclear Detection Office",
      "domestic nuclear detection",
      "domestic security",
      "drill",
      "emergency landing",
      "emergency management",
      "emergency response",
      "evacuation",
      "exercise",
      "explosion",
      "explosive",
      "facility",
      "first responder",
      "gangs",
      "homeland security",
      "hostage",
      "incident",
      "initiative",
      "law enforcement",
      "lockdown",
      "looting",
      "maritime domain awareness",
      "MDA",
      "militia",
      "mitigation",
      "national preparedness",
      "national security",
      "organized crime",
      "pipe bomb",
      "police",
      "prevention",
      "recovery",
      "response",
      "riot",
      "screening",
      "security",
      "shooting",
      "shots fired",
      "standoff",
      "state of emergency",
      "SWAT",
      "threat"
    ]
  }
  """

-- Decode.
