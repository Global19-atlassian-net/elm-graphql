module Api.Object.RepositoryInvitation exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object exposing (Object)
import Json.Decode as Decode


selection : (a -> constructor) -> Object (a -> constructor) Api.Object.RepositoryInvitation
selection constructor =
    Object.object constructor


id : FieldDecoder String Api.Object.RepositoryInvitation
id =
    Object.fieldDecoder "id" [] Decode.string


invitee : Object invitee Api.Object.User -> FieldDecoder invitee Api.Object.RepositoryInvitation
invitee object =
    Object.single "invitee" [] object


inviter : Object inviter Api.Object.User -> FieldDecoder inviter Api.Object.RepositoryInvitation
inviter object =
    Object.single "inviter" [] object


repository : Object repository Api.Object.RepositoryInvitationRepository -> FieldDecoder repository Api.Object.RepositoryInvitation
repository object =
    Object.single "repository" [] object
