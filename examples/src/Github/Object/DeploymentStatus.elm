-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.DeploymentStatus exposing (..)

import Github.Enum.DeploymentStatusState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DeploymentStatus
selection constructor =
    Object.selection constructor


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.DeploymentStatus
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


{-| Identifies the actor who triggered the deployment.
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.DeploymentStatus
creator object_ =
    Object.selectionField "creator" [] object_ (identity >> Decode.nullable)


{-| Identifies the deployment associated with status.
-}
deployment : SelectionSet decodesTo Github.Object.Deployment -> Field decodesTo Github.Object.DeploymentStatus
deployment object_ =
    Object.selectionField "deployment" [] object_ identity


{-| Identifies the description of the deployment.
-}
description : Field (Maybe String) Github.Object.DeploymentStatus
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| Identifies the environment URL of the deployment.
-}
environmentUrl : Field (Maybe Github.Scalar.Uri) Github.Object.DeploymentStatus
environmentUrl =
    Object.fieldDecoder "environmentUrl"
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
            |> Decode.map Github.Scalar.Uri
            |> Decode.nullable
        )


id : Field Github.Scalar.Id Github.Object.DeploymentStatus
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


{-| Identifies the log URL of the deployment.
-}
logUrl : Field (Maybe Github.Scalar.Uri) Github.Object.DeploymentStatus
logUrl =
    Object.fieldDecoder "logUrl"
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
            |> Decode.map Github.Scalar.Uri
            |> Decode.nullable
        )


{-| Identifies the current state of the deployment.
-}
state : Field Github.Enum.DeploymentStatusState.DeploymentStatusState Github.Object.DeploymentStatus
state =
    Object.fieldDecoder "state" [] Github.Enum.DeploymentStatusState.decoder


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.DeploymentStatus
updatedAt =
    Object.fieldDecoder "updatedAt"
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
