module Api.Object.DeleteProjectColumnPayload exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


selection : (a -> constructor) -> Object (a -> constructor) Api.Object.DeleteProjectColumnPayload
selection constructor =
    Object.object constructor


clientMutationId : FieldDecoder String Api.Object.DeleteProjectColumnPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] Decode.string


deletedColumnId : FieldDecoder String Api.Object.DeleteProjectColumnPayload
deletedColumnId =
    Object.fieldDecoder "deletedColumnId" [] Decode.string


project : Object project Api.Object.Project -> FieldDecoder project Api.Object.DeleteProjectColumnPayload
project object =
    Object.single "project" [] object
