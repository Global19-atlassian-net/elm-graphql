module Api.Object.IssueComment exposing (..)

import Api.Enum.CommentAuthorAssociation
import Api.Enum.ReactionContent
import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.IssueComment
selection constructor =
    Object.object constructor


author : SelectionSet author Api.Object.Actor -> FieldDecoder author Api.Object.IssueComment
author object =
    Object.single "author" [] object


authorAssociation : FieldDecoder Api.Enum.CommentAuthorAssociation.CommentAuthorAssociation Api.Object.IssueComment
authorAssociation =
    Object.fieldDecoder "authorAssociation" [] Api.Enum.CommentAuthorAssociation.decoder


body : FieldDecoder String Api.Object.IssueComment
body =
    Object.fieldDecoder "body" [] Decode.string


bodyHTML : FieldDecoder String Api.Object.IssueComment
bodyHTML =
    Object.fieldDecoder "bodyHTML" [] Decode.string


bodyText : FieldDecoder String Api.Object.IssueComment
bodyText =
    Object.fieldDecoder "bodyText" [] Decode.string


createdAt : FieldDecoder String Api.Object.IssueComment
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


createdViaEmail : FieldDecoder Bool Api.Object.IssueComment
createdViaEmail =
    Object.fieldDecoder "createdViaEmail" [] Decode.bool


databaseId : FieldDecoder Int Api.Object.IssueComment
databaseId =
    Object.fieldDecoder "databaseId" [] Decode.int


editor : SelectionSet editor Api.Object.Actor -> FieldDecoder editor Api.Object.IssueComment
editor object =
    Object.single "editor" [] object


id : FieldDecoder String Api.Object.IssueComment
id =
    Object.fieldDecoder "id" [] Decode.string


issue : SelectionSet issue Api.Object.Issue -> FieldDecoder issue Api.Object.IssueComment
issue object =
    Object.single "issue" [] object


lastEditedAt : FieldDecoder String Api.Object.IssueComment
lastEditedAt =
    Object.fieldDecoder "lastEditedAt" [] Decode.string


publishedAt : FieldDecoder String Api.Object.IssueComment
publishedAt =
    Object.fieldDecoder "publishedAt" [] Decode.string


pullRequest : SelectionSet pullRequest Api.Object.PullRequest -> FieldDecoder pullRequest Api.Object.IssueComment
pullRequest object =
    Object.single "pullRequest" [] object


reactionGroups : SelectionSet reactionGroups Api.Object.ReactionGroup -> FieldDecoder (List reactionGroups) Api.Object.IssueComment
reactionGroups object =
    Object.listOf "reactionGroups" [] object


reactions : ({ first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String, content : Maybe Api.Enum.ReactionContent.ReactionContent, orderBy : Maybe Value } -> { first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String, content : Maybe Api.Enum.ReactionContent.ReactionContent, orderBy : Maybe Value }) -> SelectionSet reactions Api.Object.ReactionConnection -> FieldDecoder reactions Api.Object.IssueComment
reactions fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Nothing, after = Nothing, last = Nothing, before = Nothing, content = Nothing, orderBy = Nothing }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "content" filledInOptionals.content (Encode.enum toString), Argument.optional "orderBy" filledInOptionals.orderBy identity ]
                |> List.filterMap identity
    in
    Object.single "reactions" optionalArgs object


repository : SelectionSet repository Api.Object.Repository -> FieldDecoder repository Api.Object.IssueComment
repository object =
    Object.single "repository" [] object


resourcePath : FieldDecoder String Api.Object.IssueComment
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


updatedAt : FieldDecoder String Api.Object.IssueComment
updatedAt =
    Object.fieldDecoder "updatedAt" [] Decode.string


url : FieldDecoder String Api.Object.IssueComment
url =
    Object.fieldDecoder "url" [] Decode.string


viewerCanDelete : FieldDecoder Bool Api.Object.IssueComment
viewerCanDelete =
    Object.fieldDecoder "viewerCanDelete" [] Decode.bool


viewerCanReact : FieldDecoder Bool Api.Object.IssueComment
viewerCanReact =
    Object.fieldDecoder "viewerCanReact" [] Decode.bool


viewerCanUpdate : FieldDecoder Bool Api.Object.IssueComment
viewerCanUpdate =
    Object.fieldDecoder "viewerCanUpdate" [] Decode.bool


viewerCannotUpdateReasons : FieldDecoder (List String) Api.Object.IssueComment
viewerCannotUpdateReasons =
    Object.fieldDecoder "viewerCannotUpdateReasons" [] (Decode.string |> Decode.list)


viewerDidAuthor : FieldDecoder Bool Api.Object.IssueComment
viewerDidAuthor =
    Object.fieldDecoder "viewerDidAuthor" [] Decode.bool
