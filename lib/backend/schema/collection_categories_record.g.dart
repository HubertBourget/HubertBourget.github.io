// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_categories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollectionCategoriesRecord> _$collectionCategoriesRecordSerializer =
    new _$CollectionCategoriesRecordSerializer();

class _$CollectionCategoriesRecordSerializer
    implements StructuredSerializer<CollectionCategoriesRecord> {
  @override
  final Iterable<Type> types = const [
    CollectionCategoriesRecord,
    _$CollectionCategoriesRecord
  ];
  @override
  final String wireName = 'CollectionCategoriesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CollectionCategoriesRecord object,
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
  CollectionCategoriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectionCategoriesRecordBuilder();

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

class _$CollectionCategoriesRecord extends CollectionCategoriesRecord {
  @override
  final String? string;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CollectionCategoriesRecord(
          [void Function(CollectionCategoriesRecordBuilder)? updates]) =>
      (new CollectionCategoriesRecordBuilder()..update(updates))._build();

  _$CollectionCategoriesRecord._({this.string, this.ffRef}) : super._();

  @override
  CollectionCategoriesRecord rebuild(
          void Function(CollectionCategoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionCategoriesRecordBuilder toBuilder() =>
      new CollectionCategoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionCategoriesRecord &&
        string == other.string &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, string.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionCategoriesRecord')
          ..add('string', string)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CollectionCategoriesRecordBuilder
    implements
        Builder<CollectionCategoriesRecord, CollectionCategoriesRecordBuilder> {
  _$CollectionCategoriesRecord? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CollectionCategoriesRecordBuilder() {
    CollectionCategoriesRecord._initializeBuilder(this);
  }

  CollectionCategoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionCategoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollectionCategoriesRecord;
  }

  @override
  void update(void Function(CollectionCategoriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionCategoriesRecord build() => _build();

  _$CollectionCategoriesRecord _build() {
    final _$result =
        _$v ?? new _$CollectionCategoriesRecord._(string: string, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
