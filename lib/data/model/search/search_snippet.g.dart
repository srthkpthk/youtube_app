// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_snippet;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchSnippet> _$searchSnippetSerializer =
    new _$SearchSnippetSerializer();

class _$SearchSnippetSerializer implements StructuredSerializer<SearchSnippet> {
  @override
  final Iterable<Type> types = const [SearchSnippet, _$SearchSnippet];
  @override
  final String wireName = 'SearchSnippet';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchSnippet object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'publishedAt',
      serializers.serialize(object.publishedAt,
          specifiedType: const FullType(String)),
      'channelId',
      serializers.serialize(object.channelId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'channelTitle',
      serializers.serialize(object.channelTitle,
          specifiedType: const FullType(String)),
      'thumbnails',
      serializers.serialize(object.thumbnails,
          specifiedType: const FullType(Thumbnails)),
    ];

    return result;
  }

  @override
  SearchSnippet deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchSnippetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'channelId':
          result.channelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'channelTitle':
          result.channelTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnails':
          result.thumbnails.replace(serializers.deserialize(value,
              specifiedType: const FullType(Thumbnails)) as Thumbnails);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchSnippet extends SearchSnippet {
  @override
  final String publishedAt;
  @override
  final String channelId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String channelTitle;
  @override
  final Thumbnails thumbnails;

  factory _$SearchSnippet([void Function(SearchSnippetBuilder) updates]) =>
      (new SearchSnippetBuilder()..update(updates)).build();

  _$SearchSnippet._(
      {this.publishedAt,
      this.channelId,
      this.title,
      this.description,
      this.channelTitle,
      this.thumbnails})
      : super._() {
    if (publishedAt == null) {
      throw new BuiltValueNullFieldError('SearchSnippet', 'publishedAt');
    }
    if (channelId == null) {
      throw new BuiltValueNullFieldError('SearchSnippet', 'channelId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('SearchSnippet', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('SearchSnippet', 'description');
    }
    if (channelTitle == null) {
      throw new BuiltValueNullFieldError('SearchSnippet', 'channelTitle');
    }
    if (thumbnails == null) {
      throw new BuiltValueNullFieldError('SearchSnippet', 'thumbnails');
    }
  }

  @override
  SearchSnippet rebuild(void Function(SearchSnippetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchSnippetBuilder toBuilder() => new SearchSnippetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchSnippet &&
        publishedAt == other.publishedAt &&
        channelId == other.channelId &&
        title == other.title &&
        description == other.description &&
        channelTitle == other.channelTitle &&
        thumbnails == other.thumbnails;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, publishedAt.hashCode), channelId.hashCode),
                    title.hashCode),
                description.hashCode),
            channelTitle.hashCode),
        thumbnails.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchSnippet')
          ..add('publishedAt', publishedAt)
          ..add('channelId', channelId)
          ..add('title', title)
          ..add('description', description)
          ..add('channelTitle', channelTitle)
          ..add('thumbnails', thumbnails))
        .toString();
  }
}

class SearchSnippetBuilder
    implements Builder<SearchSnippet, SearchSnippetBuilder> {
  _$SearchSnippet _$v;

  String _publishedAt;
  String get publishedAt => _$this._publishedAt;
  set publishedAt(String publishedAt) => _$this._publishedAt = publishedAt;

  String _channelId;
  String get channelId => _$this._channelId;
  set channelId(String channelId) => _$this._channelId = channelId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _channelTitle;
  String get channelTitle => _$this._channelTitle;
  set channelTitle(String channelTitle) => _$this._channelTitle = channelTitle;

  ThumbnailsBuilder _thumbnails;
  ThumbnailsBuilder get thumbnails =>
      _$this._thumbnails ??= new ThumbnailsBuilder();
  set thumbnails(ThumbnailsBuilder thumbnails) =>
      _$this._thumbnails = thumbnails;

  SearchSnippetBuilder();

  SearchSnippetBuilder get _$this {
    if (_$v != null) {
      _publishedAt = _$v.publishedAt;
      _channelId = _$v.channelId;
      _title = _$v.title;
      _description = _$v.description;
      _channelTitle = _$v.channelTitle;
      _thumbnails = _$v.thumbnails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchSnippet other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchSnippet;
  }

  @override
  void update(void Function(SearchSnippetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchSnippet build() {
    _$SearchSnippet _$result;
    try {
      _$result = _$v ??
          new _$SearchSnippet._(
              publishedAt: publishedAt,
              channelId: channelId,
              title: title,
              description: description,
              channelTitle: channelTitle,
              thumbnails: thumbnails.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'thumbnails';
        thumbnails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchSnippet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
