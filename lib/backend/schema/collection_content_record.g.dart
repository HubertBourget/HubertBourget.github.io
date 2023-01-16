// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_content_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollectionContentRecord> _$collectionContentRecordSerializer =
    new _$CollectionContentRecordSerializer();

class _$CollectionContentRecordSerializer
    implements StructuredSerializer<CollectionContentRecord> {
  @override
  final Iterable<Type> types = const [
    CollectionContentRecord,
    _$CollectionContentRecord
  ];
  @override
  final String wireName = 'CollectionContentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CollectionContentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.videoUrl;
    if (value != null) {
      result
        ..add('video_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoTitle;
    if (value != null) {
      result
        ..add('video_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.documentUserId;
    if (value != null) {
      result
        ..add('document_user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.tagInstruments;
    if (value != null) {
      result
        ..add('tag_instruments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.tagGenres;
    if (value != null) {
      result
        ..add('tag_genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.perspective;
    if (value != null) {
      result
        ..add('perspective')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  CollectionContentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectionContentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'video_url':
          result.videoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video_title':
          result.videoTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'document_user_id':
          result.documentUserId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'tag_instruments':
          result.tagInstruments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'tag_genres':
          result.tagGenres.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'perspective':
          result.perspective = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$CollectionContentRecord extends CollectionContentRecord {
  @override
  final String? videoUrl;
  @override
  final String? videoTitle;
  @override
  final DocumentReference<Object?>? documentUserId;
  @override
  final BuiltList<DocumentReference<Object?>>? tagInstruments;
  @override
  final BuiltList<DocumentReference<Object?>>? tagGenres;
  @override
  final DocumentReference<Object?>? category;
  @override
  final DocumentReference<Object?>? perspective;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CollectionContentRecord(
          [void Function(CollectionContentRecordBuilder)? updates]) =>
      (new CollectionContentRecordBuilder()..update(updates))._build();

  _$CollectionContentRecord._(
      {this.videoUrl,
      this.videoTitle,
      this.documentUserId,
      this.tagInstruments,
      this.tagGenres,
      this.category,
      this.perspective,
      this.ffRef})
      : super._();

  @override
  CollectionContentRecord rebuild(
          void Function(CollectionContentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionContentRecordBuilder toBuilder() =>
      new CollectionContentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionContentRecord &&
        videoUrl == other.videoUrl &&
        videoTitle == other.videoTitle &&
        documentUserId == other.documentUserId &&
        tagInstruments == other.tagInstruments &&
        tagGenres == other.tagGenres &&
        category == other.category &&
        perspective == other.perspective &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, videoUrl.hashCode), videoTitle.hashCode),
                            documentUserId.hashCode),
                        tagInstruments.hashCode),
                    tagGenres.hashCode),
                category.hashCode),
            perspective.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionContentRecord')
          ..add('videoUrl', videoUrl)
          ..add('videoTitle', videoTitle)
          ..add('documentUserId', documentUserId)
          ..add('tagInstruments', tagInstruments)
          ..add('tagGenres', tagGenres)
          ..add('category', category)
          ..add('perspective', perspective)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CollectionContentRecordBuilder
    implements
        Builder<CollectionContentRecord, CollectionContentRecordBuilder> {
  _$CollectionContentRecord? _$v;

  String? _videoUrl;
  String? get videoUrl => _$this._videoUrl;
  set videoUrl(String? videoUrl) => _$this._videoUrl = videoUrl;

  String? _videoTitle;
  String? get videoTitle => _$this._videoTitle;
  set videoTitle(String? videoTitle) => _$this._videoTitle = videoTitle;

  DocumentReference<Object?>? _documentUserId;
  DocumentReference<Object?>? get documentUserId => _$this._documentUserId;
  set documentUserId(DocumentReference<Object?>? documentUserId) =>
      _$this._documentUserId = documentUserId;

  ListBuilder<DocumentReference<Object?>>? _tagInstruments;
  ListBuilder<DocumentReference<Object?>> get tagInstruments =>
      _$this._tagInstruments ??= new ListBuilder<DocumentReference<Object?>>();
  set tagInstruments(ListBuilder<DocumentReference<Object?>>? tagInstruments) =>
      _$this._tagInstruments = tagInstruments;

  ListBuilder<DocumentReference<Object?>>? _tagGenres;
  ListBuilder<DocumentReference<Object?>> get tagGenres =>
      _$this._tagGenres ??= new ListBuilder<DocumentReference<Object?>>();
  set tagGenres(ListBuilder<DocumentReference<Object?>>? tagGenres) =>
      _$this._tagGenres = tagGenres;

  DocumentReference<Object?>? _category;
  DocumentReference<Object?>? get category => _$this._category;
  set category(DocumentReference<Object?>? category) =>
      _$this._category = category;

  DocumentReference<Object?>? _perspective;
  DocumentReference<Object?>? get perspective => _$this._perspective;
  set perspective(DocumentReference<Object?>? perspective) =>
      _$this._perspective = perspective;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CollectionContentRecordBuilder() {
    CollectionContentRecord._initializeBuilder(this);
  }

  CollectionContentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _videoUrl = $v.videoUrl;
      _videoTitle = $v.videoTitle;
      _documentUserId = $v.documentUserId;
      _tagInstruments = $v.tagInstruments?.toBuilder();
      _tagGenres = $v.tagGenres?.toBuilder();
      _category = $v.category;
      _perspective = $v.perspective;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionContentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollectionContentRecord;
  }

  @override
  void update(void Function(CollectionContentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionContentRecord build() => _build();

  _$CollectionContentRecord _build() {
    _$CollectionContentRecord _$result;
    try {
      _$result = _$v ??
          new _$CollectionContentRecord._(
              videoUrl: videoUrl,
              videoTitle: videoTitle,
              documentUserId: documentUserId,
              tagInstruments: _tagInstruments?.build(),
              tagGenres: _tagGenres?.build(),
              category: category,
              perspective: perspective,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagInstruments';
        _tagInstruments?.build();
        _$failedField = 'tagGenres';
        _tagGenres?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CollectionContentRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
