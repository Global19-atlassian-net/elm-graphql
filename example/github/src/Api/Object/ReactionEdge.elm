module Api.Object.ReactionEdge exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


selection : (a -> constructor) -> Object (a -> constructor) Api.Object.ReactionEdge
selection constructor =
    Object.object constructor


cursor : FieldDecoder String Api.Object.ReactionEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : Object node Api.Object.Reaction -> FieldDecoder node Api.Object.ReactionEdge
node object =
    Object.single "node" [] object
