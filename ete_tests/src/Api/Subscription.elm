-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Api.Subscription exposing (..)

import Api.Interface
import Api.Object
import Api.Scalar
import Api.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.Operation exposing (RootSubscription)
import Graphqelm.OptionalArgument exposing (OptionalArgument(..))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)


{-| Select fields to build up a top-level mutation. The request can be sent with
functions from `Graphqelm.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootSubscription
selection constructor =
    Object.selection constructor


{-| A comment was added to a blog post.
-}
commentAdded : { postId : Api.Scalar.Id } -> SelectionSet decodesTo Api.Object.Comment -> Field decodesTo RootSubscription
commentAdded requiredArgs object =
    Object.selectionField "commentAdded" [ Argument.required "postId" requiredArgs.postId (\(Api.Scalar.Id raw) -> Encode.string raw) ] object identity


{-| A post was added to the blog.
-}
postAdded : SelectionSet decodesTo Api.Object.Post -> Field decodesTo RootSubscription
postAdded object =
    Object.selectionField "postAdded" [] object identity
