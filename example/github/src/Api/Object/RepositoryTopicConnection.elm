module Api.Object.RepositoryTopicConnection exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.RepositoryTopicConnection
selection constructor =
    Object.object constructor


edges : SelectionSet edges Api.Object.RepositoryTopicEdge -> FieldDecoder (List edges) Api.Object.RepositoryTopicConnection
edges object =
    Object.listOf "edges" [] object


nodes : SelectionSet nodes Api.Object.RepositoryTopic -> FieldDecoder (List nodes) Api.Object.RepositoryTopicConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : SelectionSet pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.RepositoryTopicConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.RepositoryTopicConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
