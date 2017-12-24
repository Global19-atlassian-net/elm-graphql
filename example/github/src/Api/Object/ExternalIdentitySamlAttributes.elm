module Api.Object.ExternalIdentitySamlAttributes exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


selection : (a -> constructor) -> Object (a -> constructor) Api.Object.ExternalIdentitySamlAttributes
selection constructor =
    Object.object constructor


nameId : FieldDecoder String Api.Object.ExternalIdentitySamlAttributes
nameId =
    Object.fieldDecoder "nameId" [] Decode.string
