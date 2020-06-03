library search_event;

import 'package:built_value/built_value.dart';

part 'search_event.g.dart';

abstract class SearchEvent {}

abstract class SearchInitiated extends SearchEvent
    implements Built<SearchInitiated, SearchInitiatedBuilder> {
  SearchInitiated._();

  String get query;

  factory SearchInitiated([void Function(SearchInitiatedBuilder) updates]) =
      _$SearchInitiated;
}

class FetchNextPageResult extends SearchEvent {}
