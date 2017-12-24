module Api.Object.MilestoneConnection exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.MilestoneConnection
selection constructor =
    Object.object constructor


edges : SelectionSet edges Api.Object.MilestoneEdge -> FieldDecoder (List edges) Api.Object.MilestoneConnection
edges object =
    Object.listOf "edges" [] object


nodes : SelectionSet nodes Api.Object.Milestone -> FieldDecoder (List nodes) Api.Object.MilestoneConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : SelectionSet pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.MilestoneConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.MilestoneConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
