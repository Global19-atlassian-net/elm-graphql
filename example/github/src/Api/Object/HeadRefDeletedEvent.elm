module Api.Object.HeadRefDeletedEvent exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


selection : (a -> constructor) -> Object (a -> constructor) Api.Object.HeadRefDeletedEvent
selection constructor =
    Object.object constructor


actor : Object actor Api.Object.Actor -> FieldDecoder actor Api.Object.HeadRefDeletedEvent
actor object =
    Object.single "actor" [] object


createdAt : FieldDecoder String Api.Object.HeadRefDeletedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


headRef : Object headRef Api.Object.Ref -> FieldDecoder headRef Api.Object.HeadRefDeletedEvent
headRef object =
    Object.single "headRef" [] object


headRefName : FieldDecoder String Api.Object.HeadRefDeletedEvent
headRefName =
    Object.fieldDecoder "headRefName" [] Decode.string


id : FieldDecoder String Api.Object.HeadRefDeletedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


pullRequest : Object pullRequest Api.Object.PullRequest -> FieldDecoder pullRequest Api.Object.HeadRefDeletedEvent
pullRequest object =
    Object.single "pullRequest" [] object
