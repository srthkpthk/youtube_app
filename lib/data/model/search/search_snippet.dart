library search_snippet;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_app/data/model/search/thumbnails.dart';
import 'package:youtube_app/data/model/serializer/serilalizers.dart';

part 'search_snippet.g.dart';

abstract class SearchSnippet
    implements Built<SearchSnippet, SearchSnippetBuilder> {
  String get publishedAt;

  String get channelId;

  String get title;

  String get description;

  String get channelTitle;

  Thumbnails get thumbnails;

  SearchSnippet._();

  factory SearchSnippet([void Function(SearchSnippetBuilder) updates]) =
      _$SearchSnippet;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(SearchSnippet.serializer, this);
  }

  static SearchSnippet fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchSnippet.serializer, json.decode(jsonString));
  }

  static Serializer<SearchSnippet> get serializer => _$searchSnippetSerializer;
}
