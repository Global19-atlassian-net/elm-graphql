-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.TopicConnection exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.TopicConnection
selection constructor =
    Object.selection constructor


{-| A list of edges.
-}
edges : SelectionSet decodesTo Github.Object.TopicEdge -> Field (Maybe (List (Maybe decodesTo))) Github.Object.TopicConnection
edges object_ =
    Object.selectionField "edges" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes : SelectionSet decodesTo Github.Object.Topic -> Field (Maybe (List (Maybe decodesTo))) Github.Object.TopicConnection
nodes object_ =
    Object.selectionField "nodes" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo Github.Object.PageInfo -> Field decodesTo Github.Object.TopicConnection
pageInfo object_ =
    Object.selectionField "pageInfo" [] object_ identity


{-| Identifies the total count of items in the connection.
-}
totalCount : Field Int Github.Object.TopicConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
