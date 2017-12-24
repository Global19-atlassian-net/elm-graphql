module Api.Object.ReleaseAsset exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.ReleaseAsset
selection constructor =
    Object.object constructor


contentType : FieldDecoder String Api.Object.ReleaseAsset
contentType =
    Object.fieldDecoder "contentType" [] Decode.string


createdAt : FieldDecoder String Api.Object.ReleaseAsset
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


downloadCount : FieldDecoder Int Api.Object.ReleaseAsset
downloadCount =
    Object.fieldDecoder "downloadCount" [] Decode.int


downloadUrl : FieldDecoder String Api.Object.ReleaseAsset
downloadUrl =
    Object.fieldDecoder "downloadUrl" [] Decode.string


id : FieldDecoder String Api.Object.ReleaseAsset
id =
    Object.fieldDecoder "id" [] Decode.string


name : FieldDecoder String Api.Object.ReleaseAsset
name =
    Object.fieldDecoder "name" [] Decode.string


release : SelectionSet release Api.Object.Release -> FieldDecoder release Api.Object.ReleaseAsset
release object =
    Object.single "release" [] object


size : FieldDecoder Int Api.Object.ReleaseAsset
size =
    Object.fieldDecoder "size" [] Decode.int


updatedAt : FieldDecoder String Api.Object.ReleaseAsset
updatedAt =
    Object.fieldDecoder "updatedAt" [] Decode.string


uploadedBy : SelectionSet uploadedBy Api.Object.User -> FieldDecoder uploadedBy Api.Object.ReleaseAsset
uploadedBy object =
    Object.single "uploadedBy" [] object


url : FieldDecoder String Api.Object.ReleaseAsset
url =
    Object.fieldDecoder "url" [] Decode.string
