-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.ReviewRequestRemovedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewRequestRemovedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.ReviewRequestRemovedEvent
actor object_ =
    Object.selectionField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.ReviewRequestRemovedEvent
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


id : Field Github.Scalar.Id Github.Object.ReviewRequestRemovedEvent
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


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> Field decodesTo Github.Object.ReviewRequestRemovedEvent
pullRequest object_ =
    Object.selectionField "pullRequest" [] object_ identity


{-| Identifies the reviewer whose review request was removed.
-}
requestedReviewer : SelectionSet decodesTo Github.Union.RequestedReviewer -> Field (Maybe decodesTo) Github.Object.ReviewRequestRemovedEvent
requestedReviewer object_ =
    Object.selectionField "requestedReviewer" [] object_ (identity >> Decode.nullable)


{-| Identifies the user whose review request was removed.
-}
subject : SelectionSet decodesTo Github.Object.User -> Field (Maybe decodesTo) Github.Object.ReviewRequestRemovedEvent
subject object_ =
    Object.selectionField "subject" [] object_ (identity >> Decode.nullable)
