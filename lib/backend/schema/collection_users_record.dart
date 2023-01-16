import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'collection_users_record.g.dart';

abstract class CollectionUsersRecord
    implements Built<CollectionUsersRecord, CollectionUsersRecordBuilder> {
  static Serializer<CollectionUsersRecord> get serializer =>
      _$collectionUsersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  BuiltList<DocumentReference>? get loves;

  @BuiltValueField(wireName: 'playback_history')
  BuiltList<DocumentReference>? get playbackHistory;

  BuiltList<DocumentReference>? get favorites;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  @BuiltValueField(wireName: 'b_is_artist')
  bool? get bIsArtist;

  @BuiltValueField(wireName: 'b_has_answered_questions')
  bool? get bHasAnsweredQuestions;

  @BuiltValueField(wireName: 'artist_bio')
  String? get artistBio;

  @BuiltValueField(wireName: 'artist_url')
  String? get artistUrl;

  @BuiltValueField(wireName: 'preferred_instruments')
  BuiltList<DocumentReference>? get preferredInstruments;

  @BuiltValueField(wireName: 'preferred_genres')
  BuiltList<DocumentReference>? get preferredGenres;

  @BuiltValueField(wireName: 'preferred_perspectives')
  BuiltList<DocumentReference>? get preferredPerspectives;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CollectionUsersRecordBuilder builder) =>
      builder
        ..email = ''
        ..displayName = ''
        ..photoUrl = ''
        ..loves = ListBuilder()
        ..playbackHistory = ListBuilder()
        ..favorites = ListBuilder()
        ..bIsArtist = false
        ..bHasAnsweredQuestions = false
        ..artistBio = ''
        ..artistUrl = ''
        ..preferredInstruments = ListBuilder()
        ..preferredGenres = ListBuilder()
        ..preferredPerspectives = ListBuilder()
        ..uid = ''
        ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection_users');

  static Stream<CollectionUsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CollectionUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CollectionUsersRecord._();
  factory CollectionUsersRecord(
          [void Function(CollectionUsersRecordBuilder) updates]) =
      _$CollectionUsersRecord;

  static CollectionUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCollectionUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? editedTime,
  bool? bIsArtist,
  bool? bHasAnsweredQuestions,
  String? artistBio,
  String? artistUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    CollectionUsersRecord.serializer,
    CollectionUsersRecord(
      (c) => c
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..loves = null
        ..playbackHistory = null
        ..favorites = null
        ..editedTime = editedTime
        ..bIsArtist = bIsArtist
        ..bHasAnsweredQuestions = bHasAnsweredQuestions
        ..artistBio = artistBio
        ..artistUrl = artistUrl
        ..preferredInstruments = null
        ..preferredGenres = null
        ..preferredPerspectives = null
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
