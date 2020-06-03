library thumbnails;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_app/data/model/search/thumbnail.dart';
import 'package:youtube_app/data/model/serializer/serilalizers.dart';

part 'thumbnails.g.dart';

abstract class Thumbnails implements Built<Thumbnails, ThumbnailsBuilder> {
  @BuiltValueField(wireName: 'default')
  Thumbnail get default_;

  Thumbnail get medium;

  Thumbnail get high;

  Thumbnails._();

  factory Thumbnails([void Function(ThumbnailsBuilder) updates]) = _$Thumbnails;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Thumbnails.serializer, this);
  }

  static Thumbnails fromJson(String jsonString) {
    return serializers.deserializeWith(
        Thumbnails.serializer, json.decode(jsonString));
  }

  static Serializer<Thumbnails> get serializer => _$thumbnailsSerializer;
}
