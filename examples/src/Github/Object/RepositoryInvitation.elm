-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.RepositoryInvitation exposing (..)

import Github.Enum.RepositoryPermission
import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(..))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RepositoryInvitation
selection constructor =
    Object.selection constructor


id : Field Github.Scalar.Id Github.Object.RepositoryInvitation
id =
    Object.fieldDecoder "id"
        []
        (Decode.oneOf
            [ Decode.string
            , Decode.float |> Decode.map String.fromFloat
            , Decode.int |> Decode.map String.fromInt
            , Decode.bool
                |> Decode.map
                    (\bool ->
                        if bool then
                            "True"

                        else
                            "False"
                    )
            ]
            |> Decode.map Github.Scalar.Id
        )


{-| The user who received the invitation.
-}
invitee : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.RepositoryInvitation
invitee object_ =
    Object.selectionField "invitee" [] object_ identity


{-| The user who created the invitation.
-}
inviter : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.RepositoryInvitation
inviter object_ =
    Object.selectionField "inviter" [] object_ identity


{-| The permission granted on this repository by this invitation.
-}
permission : Field Github.Enum.RepositoryPermission.RepositoryPermission Github.Object.RepositoryInvitation
permission =
    Object.fieldDecoder "permission" [] Github.Enum.RepositoryPermission.decoder


{-| The Repository the user is invited to.
-}
repository : SelectionSet decodesTo Github.Object.RepositoryInvitationRepository -> Field (Maybe decodesTo) Github.Object.RepositoryInvitation
repository object_ =
    Object.selectionField "repository" [] object_ (identity >> Decode.nullable)
