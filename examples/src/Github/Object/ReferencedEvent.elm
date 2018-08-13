-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.ReferencedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReferencedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.ReferencedEvent
actor object_ =
    Object.selectionField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the commit associated with the 'referenced' event.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> Field (Maybe decodesTo) Github.Object.ReferencedEvent
commit object_ =
    Object.selectionField "commit" [] object_ (identity >> Decode.nullable)


{-| Identifies the repository associated with the 'referenced' event.
-}
commitRepository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.ReferencedEvent
commitRepository object_ =
    Object.selectionField "commitRepository" [] object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.ReferencedEvent
createdAt =
    Object.fieldDecoder "createdAt"
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
            |> Decode.map Github.Scalar.DateTime
        )


id : Field Github.Scalar.Id Github.Object.ReferencedEvent
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


{-| Reference originated in a different repository.
-}
isCrossReference : Field Bool Github.Object.ReferencedEvent
isCrossReference =
    Object.fieldDecoder "isCrossReference" [] Decode.bool


{-| Reference originated in a different repository.
-}
isCrossRepository : Field Bool Github.Object.ReferencedEvent
isCrossRepository =
    Object.fieldDecoder "isCrossRepository" [] Decode.bool


{-| Checks if the commit message itself references the subject. Can be false in the case of a commit comment reference.
-}
isDirectReference : Field Bool Github.Object.ReferencedEvent
isDirectReference =
    Object.fieldDecoder "isDirectReference" [] Decode.bool


{-| Object referenced by event.
-}
subject : SelectionSet decodesTo Github.Union.ReferencedSubject -> Field decodesTo Github.Object.ReferencedEvent
subject object_ =
    Object.selectionField "subject" [] object_ identity
