-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Normalize.Object.Human_ exposing (..)

import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(..))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import Normalize.Enum.Episode_
import Normalize.InputObject
import Normalize.Interface
import Normalize.Object
import Normalize.Scalar
import Normalize.Union


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Normalize.Object.Human_
selection constructor =
    Object.selection constructor


{-| Which movies they appear in.
-}
appearsIn : Field (List Normalize.Enum.Episode_.Episode_) Normalize.Object.Human_
appearsIn =
    Object.fieldDecoder "appearsIn" [] (Normalize.Enum.Episode_.decoder |> Decode.list)


{-| The friends of the human, or an empty list if they have none.
-}
friends : SelectionSet decodesTo Normalize.Interface.Character -> Field (List decodesTo) Normalize.Object.Human_
friends object =
    Object.selectionField "friends" [] object (identity >> Decode.list)


{-| The home planet of the human, or null if unknown.
-}
homePlanet : Field (Maybe String) Normalize.Object.Human_
homePlanet =
    Object.fieldDecoder "homePlanet" [] (Decode.string |> Decode.nullable)


{-| The ID of the human.
-}
id : Field Normalize.Scalar.Id Normalize.Object.Human_
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Normalize.Scalar.Id)


{-| The name of the human.
-}
name : Field String Normalize.Object.Human_
name =
    Object.fieldDecoder "name" [] Decode.string
