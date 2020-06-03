library search_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_app/data/model/search/id.dart';
import 'package:youtube_app/data/model/search/search_snippet.dart';
import 'package:youtube_app/data/model/serializer/serilalizers.dart';

part 'search_item.g.dart';

abstract class SearchItem implements Built<SearchItem, SearchItemBuilder> {
  Id get id;

  SearchSnippet get snippet;

  SearchItem._();

  factory SearchItem([void Function(SearchItemBuilder) updates]) = _$SearchItem;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(SearchItem.serializer, this);
  }

  static SearchItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchItem.serializer, json.decode(jsonString));
  }

  static Serializer<SearchItem> get serializer => _$searchItemSerializer;
}
