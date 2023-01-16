// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_content_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SurveyContentRecord> _$surveyContentRecordSerializer =
    new _$SurveyContentRecordSerializer();

class _$SurveyContentRecordSerializer
    implements StructuredSerializer<SurveyContentRecord> {
  @override
  final Iterable<Type> types = const [
    SurveyContentRecord,
    _$SurveyContentRecord
  ];
  @override
  final String wireName = 'SurveyContentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SurveyContentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.step;
    if (value != null) {
      result
        ..add('step')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fieldType;
    if (value != null) {
      result
        ..add('fieldType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.header;
    if (value != null) {
      result
        ..add('header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subHeader;
    if (value != null) {
      result
        ..add('subHeader')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hintText;
    if (value != null) {
      result
        ..add('hintText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tagListType;
    if (value != null) {
      result
        ..add('tagListType')
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
  SurveyContentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SurveyContentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'step':
          result.step = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fieldType':
          result.fieldType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'header':
          result.header = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subHeader':
          result.subHeader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hintText':
          result.hintText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tagListType':
          result.tagListType = serializers.deserialize(value,
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

class _$SurveyContentRecord extends SurveyContentRecord {
  @override
  final int? step;
  @override
  final String? fieldType;
  @override
  final String? header;
  @override
  final String? subHeader;
  @override
  final String? hintText;
  @override
  final String? tagListType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SurveyContentRecord(
          [void Function(SurveyContentRecordBuilder)? updates]) =>
      (new SurveyContentRecordBuilder()..update(updates))._build();

  _$SurveyContentRecord._(
      {this.step,
      this.fieldType,
      this.header,
      this.subHeader,
      this.hintText,
      this.tagListType,
      this.ffRef})
      : super._();

  @override
  SurveyContentRecord rebuild(
          void Function(SurveyContentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyContentRecordBuilder toBuilder() =>
      new SurveyContentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyContentRecord &&
        step == other.step &&
        fieldType == other.fieldType &&
        header == other.header &&
        subHeader == other.subHeader &&
        hintText == other.hintText &&
        tagListType == other.tagListType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, step.hashCode), fieldType.hashCode),
                        header.hashCode),
                    subHeader.hashCode),
                hintText.hashCode),
            tagListType.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SurveyContentRecord')
          ..add('step', step)
          ..add('fieldType', fieldType)
          ..add('header', header)
          ..add('subHeader', subHeader)
          ..add('hintText', hintText)
          ..add('tagListType', tagListType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SurveyContentRecordBuilder
    implements Builder<SurveyContentRecord, SurveyContentRecordBuilder> {
  _$SurveyContentRecord? _$v;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  String? _fieldType;
  String? get fieldType => _$this._fieldType;
  set fieldType(String? fieldType) => _$this._fieldType = fieldType;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _subHeader;
  String? get subHeader => _$this._subHeader;
  set subHeader(String? subHeader) => _$this._subHeader = subHeader;

  String? _hintText;
  String? get hintText => _$this._hintText;
  set hintText(String? hintText) => _$this._hintText = hintText;

  String? _tagListType;
  String? get tagListType => _$this._tagListType;
  set tagListType(String? tagListType) => _$this._tagListType = tagListType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SurveyContentRecordBuilder() {
    SurveyContentRecord._initializeBuilder(this);
  }

  SurveyContentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _step = $v.step;
      _fieldType = $v.fieldType;
      _header = $v.header;
      _subHeader = $v.subHeader;
      _hintText = $v.hintText;
      _tagListType = $v.tagListType;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyContentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SurveyContentRecord;
  }

  @override
  void update(void Function(SurveyContentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyContentRecord build() => _build();

  _$SurveyContentRecord _build() {
    final _$result = _$v ??
        new _$SurveyContentRecord._(
            step: step,
            fieldType: fieldType,
            header: header,
            subHeader: subHeader,
            hintText: hintText,
            tagListType: tagListType,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
