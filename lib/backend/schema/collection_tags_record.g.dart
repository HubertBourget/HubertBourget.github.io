// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_tags_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollectionTagsRecord> _$collectionTagsRecordSerializer =
    new _$CollectionTagsRecordSerializer();

class _$CollectionTagsRecordSerializer
    implements StructuredSerializer<CollectionTagsRecord> {
  @override
  final Iterable<Type> types = const [
    CollectionTagsRecord,
    _$CollectionTagsRecord
  ];
  @override
  final String wireName = 'CollectionTagsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CollectionTagsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.string;
    if (value != null) {
      result
        ..add('string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CollectionTagsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectionTagsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'string':
          result.string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CollectionTagsRecord extends CollectionTagsRecord {
  @override
  final String? string;
  @override
  final String? type;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CollectionTagsRecord(
          [void Function(CollectionTagsRecordBuilder)? updates]) =>
      (new CollectionTagsRecordBuilder()..update(updates))._build();

  _$CollectionTagsRecord._({this.string, this.type, this.ffRef}) : super._();

  @override
  CollectionTagsRecord rebuild(
          void Function(CollectionTagsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionTagsRecordBuilder toBuilder() =>
      new CollectionTagsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionTagsRecord &&
        string == other.string &&
        type == other.type &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, string.hashCode), type.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionTagsRecord')
          ..add('string', string)
          ..add('type', type)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CollectionTagsRecordBuilder
    implements Builder<CollectionTagsRecord, CollectionTagsRecordBuilder> {
  _$CollectionTagsRecord? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CollectionTagsRecordBuilder() {
    CollectionTagsRecord._initializeBuilder(this);
  }

  CollectionTagsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _type = $v.type;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionTagsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollectionTagsRecord;
  }

  @override
  void update(void Function(CollectionTagsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionTagsRecord build() => _build();

  _$CollectionTagsRecord _build() {
    final _$result = _$v ??
        new _$CollectionTagsRecord._(string: string, type: type, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
