library serilalizers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:youtube_app/data/model/detail/video_item.dart';
import 'package:youtube_app/data/model/detail/video_snippet.dart';
import 'package:youtube_app/data/model/detail/youtube_video_response.dart';
import 'package:youtube_app/data/model/search/model_search.dart';

part 'serilalizers.g.dart';

@SerializersFor(const [
  YoutubeSearchResult,
  SearchItem,
  Id,
  SearchSnippet,
  Thumbnail,
  Thumbnails,
  VideoItem,
  YoutubeVideoResponse,
  VideoSnippet
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
