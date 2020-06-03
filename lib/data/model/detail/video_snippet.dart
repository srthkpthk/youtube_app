library video_snippet;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_app/data/model/search/model_search.dart';
import 'package:youtube_app/data/model/serializer/serilalizers.dart';

part 'video_snippet.g.dart';

abstract class VideoSnippet
    implements Built<VideoSnippet, VideoSnippetBuilder> {
  String get publishedAt;

  String get channelId;

  String get title;

  String get description;

  Thumbnails get thumbnails;

  String get channelTitle;

  BuiltList<String> get tags;

  VideoSnippet._();

  factory VideoSnippet([void Function(VideoSnippetBuilder) updates]) =
      _$VideoSnippet;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(VideoSnippet.serializer, this);
  }

  static VideoSnippet fromJson(String jsonString) {
    return serializers.deserializeWith(
        VideoSnippet.serializer, json.decode(jsonString));
  }

  static Serializer<VideoSnippet> get serializer => _$videoSnippetSerializer;
}
