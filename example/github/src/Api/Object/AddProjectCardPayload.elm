module Api.Object.AddProjectCardPayload exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.AddProjectCardPayload
selection constructor =
    Object.object constructor


cardEdge : SelectionSet cardEdge Api.Object.ProjectCardEdge -> FieldDecoder cardEdge Api.Object.AddProjectCardPayload
cardEdge object =
    Object.single "cardEdge" [] object


clientMutationId : FieldDecoder String Api.Object.AddProjectCardPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] Decode.string


projectColumn : SelectionSet projectColumn Api.Object.Project -> FieldDecoder projectColumn Api.Object.AddProjectCardPayload
projectColumn object =
    Object.single "projectColumn" [] object
