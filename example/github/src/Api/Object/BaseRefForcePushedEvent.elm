module Api.Object.BaseRefForcePushedEvent exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


selection : (a -> constructor) -> Object (a -> constructor) Api.Object.BaseRefForcePushedEvent
selection constructor =
    Object.object constructor


actor : Object actor Api.Object.Actor -> FieldDecoder actor Api.Object.BaseRefForcePushedEvent
actor object =
    Object.single "actor" [] object


afterCommit : Object afterCommit Api.Object.Commit -> FieldDecoder afterCommit Api.Object.BaseRefForcePushedEvent
afterCommit object =
    Object.single "afterCommit" [] object


beforeCommit : Object beforeCommit Api.Object.Commit -> FieldDecoder beforeCommit Api.Object.BaseRefForcePushedEvent
beforeCommit object =
    Object.single "beforeCommit" [] object


createdAt : FieldDecoder String Api.Object.BaseRefForcePushedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Api.Object.BaseRefForcePushedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


pullRequest : Object pullRequest Api.Object.PullRequest -> FieldDecoder pullRequest Api.Object.BaseRefForcePushedEvent
pullRequest object =
    Object.single "pullRequest" [] object


ref : Object ref Api.Object.Ref -> FieldDecoder ref Api.Object.BaseRefForcePushedEvent
ref object =
    Object.single "ref" [] object
