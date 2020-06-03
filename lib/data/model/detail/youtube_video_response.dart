library youtube_video_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_app/data/model/detail/video_item.dart';
import 'package:youtube_app/data/model/serializer/serilalizers.dart';

part 'youtube_video_response.g.dart';

abstract class YoutubeVideoResponse
    implements Built<YoutubeVideoResponse, YoutubeVideoResponseBuilder> {
  BuiltList<VideoItem> get items;

  YoutubeVideoResponse._();

  factory YoutubeVideoResponse(
          [void Function(YoutubeVideoResponseBuilder) updates]) =
      _$YoutubeVideoResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(YoutubeVideoResponse.serializer, this);
  }

  static YoutubeVideoResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        YoutubeVideoResponse.serializer, json.decode(jsonString));
  }

  static Serializer<YoutubeVideoResponse> get serializer =>
      _$youtubeVideoResponseSerializer;
}
