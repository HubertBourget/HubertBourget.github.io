import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/collection_content_record.dart';
import 'schema/collection_users_record.dart';
import 'schema/survey_content_record.dart';
import 'schema/collection_tags_record.dart';
import 'schema/collection_categories_record.dart';
import 'schema/serializers.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/collection_content_record.dart';
export 'schema/collection_users_record.dart';
export 'schema/survey_content_record.dart';
export 'schema/collection_tags_record.dart';
export 'schema/collection_categories_record.dart';

/// Functions to query CollectionContentRecords (as a Stream and as a Future).
Future<int> queryCollectionContentRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionContentRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionContentRecord>> queryCollectionContentRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CollectionContentRecord.collection,
      CollectionContentRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CollectionContentRecord>> queryCollectionContentRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CollectionContentRecord.collection,
      CollectionContentRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<CollectionContentRecord>>
    queryCollectionContentRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          CollectionContentRecord.collection,
          CollectionContentRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query CollectionUsersRecords (as a Stream and as a Future).
Future<int> queryCollectionUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionUsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionUsersRecord>> queryCollectionUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CollectionUsersRecord.collection,
      CollectionUsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CollectionUsersRecord>> queryCollectionUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CollectionUsersRecord.collection,
      CollectionUsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<CollectionUsersRecord>> queryCollectionUsersRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      CollectionUsersRecord.collection,
      CollectionUsersRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query SurveyContentRecords (as a Stream and as a Future).
Future<int> querySurveyContentRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SurveyContentRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SurveyContentRecord>> querySurveyContentRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SurveyContentRecord.collection,
      SurveyContentRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SurveyContentRecord>> querySurveyContentRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SurveyContentRecord.collection,
      SurveyContentRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<SurveyContentRecord>> querySurveyContentRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      SurveyContentRecord.collection,
      SurveyContentRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query CollectionTagsRecords (as a Stream and as a Future).
Future<int> queryCollectionTagsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionTagsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionTagsRecord>> queryCollectionTagsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CollectionTagsRecord.collection,
      CollectionTagsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CollectionTagsRecord>> queryCollectionTagsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CollectionTagsRecord.collection,
      CollectionTagsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<CollectionTagsRecord>> queryCollectionTagsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      CollectionTagsRecord.collection,
      CollectionTagsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query CollectionCategoriesRecords (as a Stream and as a Future).
Future<int> queryCollectionCategoriesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionCategoriesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionCategoriesRecord>> queryCollectionCategoriesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CollectionCategoriesRecord.collection,
      CollectionCategoriesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CollectionCategoriesRecord>> queryCollectionCategoriesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CollectionCategoriesRecord.collection,
      CollectionCategoriesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<CollectionCategoriesRecord>>
    queryCollectionCategoriesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          CollectionCategoriesRecord.collection,
          CollectionCategoriesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count);
}

Stream<List<T>> queryCollection<T>(Query collection, Serializer<T> serializer,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    Query collection, Serializer<T> serializer,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  Serializer<T> serializer, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = CollectionUsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument =
        await CollectionUsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createCollectionUsersRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument =
      serializers.deserializeWith(CollectionUsersRecord.serializer, userData);
}
