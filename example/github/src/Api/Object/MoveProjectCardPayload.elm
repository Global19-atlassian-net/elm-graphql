module Api.Object.MoveProjectCardPayload exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


selection : (a -> constructor) -> Object (a -> constructor) Api.Object.MoveProjectCardPayload
selection constructor =
    Object.object constructor


cardEdge : Object cardEdge Api.Object.ProjectCardEdge -> FieldDecoder cardEdge Api.Object.MoveProjectCardPayload
cardEdge object =
    Object.single "cardEdge" [] object


clientMutationId : FieldDecoder String Api.Object.MoveProjectCardPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] Decode.string
