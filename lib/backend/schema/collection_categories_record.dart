import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'collection_categories_record.g.dart';

abstract class CollectionCategoriesRecord
    implements
        Built<CollectionCategoriesRecord, CollectionCategoriesRecordBuilder> {
  static Serializer<CollectionCategoriesRecord> get serializer =>
      _$collectionCategoriesRecordSerializer;

  String? get string;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CollectionCategoriesRecordBuilder builder) =>
      builder..string = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection_categories');

  static Stream<CollectionCategoriesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CollectionCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CollectionCategoriesRecord._();
  factory CollectionCategoriesRecord(
          [void Function(CollectionCategoriesRecordBuilder) updates]) =
      _$CollectionCategoriesRecord;

  static CollectionCategoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCollectionCategoriesRecordData({
  String? string,
}) {
  final firestoreData = serializers.toFirestore(
    CollectionCategoriesRecord.serializer,
    CollectionCategoriesRecord(
      (c) => c..string = string,
    ),
  );

  return firestoreData;
}
