-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Interface.Actor exposing (..)

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
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.Actor
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.Actor) -> SelectionSet (a -> constructor) Github.Interface.Actor
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onBot : SelectionSet decodesTo Github.Object.Bot -> FragmentSelectionSet decodesTo Github.Interface.Actor
onBot (SelectionSet fields decoder) =
    FragmentSelectionSet "Bot" fields decoder


onOrganization : SelectionSet decodesTo Github.Object.Organization -> FragmentSelectionSet decodesTo Github.Interface.Actor
onOrganization (SelectionSet fields decoder) =
    FragmentSelectionSet "Organization" fields decoder


onUser : SelectionSet decodesTo Github.Object.User -> FragmentSelectionSet decodesTo Github.Interface.Actor
onUser (SelectionSet fields decoder) =
    FragmentSelectionSet "User" fields decoder


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the actor's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> Field Github.Scalar.Uri Github.Interface.Actor
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.fieldDecoder "avatarUrl"
        optionalArgs
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
        )


{-| The username of the actor.
-}
login : Field String Github.Interface.Actor
login =
    Object.fieldDecoder "login" [] Decode.string


{-| The HTTP path for this actor.
-}
resourcePath : Field Github.Scalar.Uri Github.Interface.Actor
resourcePath =
    Object.fieldDecoder "resourcePath"
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
        )


{-| The HTTP URL for this actor.
-}
url : Field Github.Scalar.Uri Github.Interface.Actor
url =
    Object.fieldDecoder "url"
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
        )
