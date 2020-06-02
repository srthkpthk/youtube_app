library thumbnail;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_app/data/model/serializer/serilalizers.dart';

part 'thumbnail.g.dart';

abstract class Thumbnail implements Built<Thumbnail, ThumbnailBuilder> {
  String get url;

  int get width;

  int get height;

  Thumbnail._();

  factory Thumbnail([void Function(ThumbnailBuilder) updates]) = _$Thumbnail;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Thumbnail.serializer, this);
  }

  static Thumbnail fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Thumbnail.serializer, json);
  }

  static Serializer<Thumbnail> get serializer => _$thumbnailSerializer;
}
