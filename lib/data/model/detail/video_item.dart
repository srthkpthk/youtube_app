library video_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_app/data/model/detail/video_snippet.dart';
import 'package:youtube_app/data/model/serializer/serilalizers.dart';

part 'video_item.g.dart';

abstract class VideoItem implements Built<VideoItem, VideoItemBuilder> {
  String get id;

  VideoSnippet get snippet;

  VideoItem._();

  factory VideoItem([void Function(VideoItemBuilder) updates]) = _$VideoItem;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(VideoItem.serializer, this);
  }

  static VideoItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        VideoItem.serializer, json.decode(jsonString));
  }

  static Serializer<VideoItem> get serializer => _$videoItemSerializer;
}
