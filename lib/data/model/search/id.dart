library id;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_app/data/model/serializer/serilalizers.dart';

part 'id.g.dart';

abstract class Id implements Built<Id, IdBuilder> {
  String get videoId;

  Id._();

  factory Id([void Function(IdBuilder) updates]) = _$Id;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Id.serializer, this);
  }

  static Id fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Id.serializer, json);
  }

  static Serializer<Id> get serializer => _$idSerializer;
}
