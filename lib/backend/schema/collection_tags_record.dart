import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'collection_tags_record.g.dart';

abstract class CollectionTagsRecord
    implements Built<CollectionTagsRecord, CollectionTagsRecordBuilder> {
  static Serializer<CollectionTagsRecord> get serializer =>
      _$collectionTagsRecordSerializer;

  String? get string;

  String? get type;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CollectionTagsRecordBuilder builder) => builder
    ..string = ''
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection_tags');

  static Stream<CollectionTagsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CollectionTagsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CollectionTagsRecord._();
  factory CollectionTagsRecord(
          [void Function(CollectionTagsRecordBuilder) updates]) =
      _$CollectionTagsRecord;

  static CollectionTagsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCollectionTagsRecordData({
  String? string,
  String? type,
}) {
  final firestoreData = serializers.toFirestore(
    CollectionTagsRecord.serializer,
    CollectionTagsRecord(
      (c) => c
        ..string = string
        ..type = type,
    ),
  );

  return firestoreData;
}
