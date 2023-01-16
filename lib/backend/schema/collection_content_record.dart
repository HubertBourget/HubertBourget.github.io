import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'collection_content_record.g.dart';

abstract class CollectionContentRecord
    implements Built<CollectionContentRecord, CollectionContentRecordBuilder> {
  static Serializer<CollectionContentRecord> get serializer =>
      _$collectionContentRecordSerializer;

  @BuiltValueField(wireName: 'video_url')
  String? get videoUrl;

  @BuiltValueField(wireName: 'video_title')
  String? get videoTitle;

  @BuiltValueField(wireName: 'document_user_id')
  DocumentReference? get documentUserId;

  @BuiltValueField(wireName: 'tag_instruments')
  BuiltList<DocumentReference>? get tagInstruments;

  @BuiltValueField(wireName: 'tag_genres')
  BuiltList<DocumentReference>? get tagGenres;

  DocumentReference? get category;

  DocumentReference? get perspective;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CollectionContentRecordBuilder builder) =>
      builder
        ..videoUrl = ''
        ..videoTitle = ''
        ..tagInstruments = ListBuilder()
        ..tagGenres = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection_content');

  static Stream<CollectionContentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CollectionContentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CollectionContentRecord._();
  factory CollectionContentRecord(
          [void Function(CollectionContentRecordBuilder) updates]) =
      _$CollectionContentRecord;

  static CollectionContentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCollectionContentRecordData({
  String? videoUrl,
  String? videoTitle,
  DocumentReference? documentUserId,
  DocumentReference? category,
  DocumentReference? perspective,
}) {
  final firestoreData = serializers.toFirestore(
    CollectionContentRecord.serializer,
    CollectionContentRecord(
      (c) => c
        ..videoUrl = videoUrl
        ..videoTitle = videoTitle
        ..documentUserId = documentUserId
        ..tagInstruments = null
        ..tagGenres = null
        ..category = category
        ..perspective = perspective,
    ),
  );

  return firestoreData;
}
