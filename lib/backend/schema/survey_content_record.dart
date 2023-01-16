import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'survey_content_record.g.dart';

abstract class SurveyContentRecord
    implements Built<SurveyContentRecord, SurveyContentRecordBuilder> {
  static Serializer<SurveyContentRecord> get serializer =>
      _$surveyContentRecordSerializer;

  int? get step;

  String? get fieldType;

  String? get header;

  String? get subHeader;

  String? get hintText;

  String? get tagListType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SurveyContentRecordBuilder builder) => builder
    ..step = 0
    ..fieldType = ''
    ..header = ''
    ..subHeader = ''
    ..hintText = ''
    ..tagListType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SurveyContent');

  static Stream<SurveyContentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SurveyContentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SurveyContentRecord._();
  factory SurveyContentRecord(
          [void Function(SurveyContentRecordBuilder) updates]) =
      _$SurveyContentRecord;

  static SurveyContentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSurveyContentRecordData({
  int? step,
  String? fieldType,
  String? header,
  String? subHeader,
  String? hintText,
  String? tagListType,
}) {
  final firestoreData = serializers.toFirestore(
    SurveyContentRecord.serializer,
    SurveyContentRecord(
      (s) => s
        ..step = step
        ..fieldType = fieldType
        ..header = header
        ..subHeader = subHeader
        ..hintText = hintText
        ..tagListType = tagListType,
    ),
  );

  return firestoreData;
}
