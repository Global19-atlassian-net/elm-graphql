module Api.Object.ReviewDismissalAllowance exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


selection : (a -> constructor) -> Object (a -> constructor) Api.Object.ReviewDismissalAllowance
selection constructor =
    Object.object constructor


actor : FieldDecoder String Api.Object.ReviewDismissalAllowance
actor =
    Object.fieldDecoder "actor" [] Decode.string


id : FieldDecoder String Api.Object.ReviewDismissalAllowance
id =
    Object.fieldDecoder "id" [] Decode.string


protectedBranch : Object protectedBranch Api.Object.ProtectedBranch -> FieldDecoder protectedBranch Api.Object.ReviewDismissalAllowance
protectedBranch object =
    Object.single "protectedBranch" [] object
