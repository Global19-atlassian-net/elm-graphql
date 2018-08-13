-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.LabeledEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.LabeledEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.LabeledEvent
actor object_ =
    Object.selectionField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.LabeledEvent
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


id : Field Github.Scalar.Id Github.Object.LabeledEvent
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


{-| Identifies the label associated with the 'labeled' event.
-}
label : SelectionSet decodesTo Github.Object.Label -> Field decodesTo Github.Object.LabeledEvent
label object_ =
    Object.selectionField "label" [] object_ identity


{-| Identifies the `Labelable` associated with the event.
-}
labelable : SelectionSet decodesTo Github.Interface.Labelable -> Field decodesTo Github.Object.LabeledEvent
labelable object_ =
    Object.selectionField "labelable" [] object_ identity
