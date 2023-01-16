// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollectionUsersRecord> _$collectionUsersRecordSerializer =
    new _$CollectionUsersRecordSerializer();

class _$CollectionUsersRecordSerializer
    implements StructuredSerializer<CollectionUsersRecord> {
  @override
  final Iterable<Type> types = const [
    CollectionUsersRecord,
    _$CollectionUsersRecord
  ];
  @override
  final String wireName = 'CollectionUsersRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CollectionUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loves;
    if (value != null) {
      result
        ..add('loves')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.playbackHistory;
    if (value != null) {
      result
        ..add('playback_history')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.favorites;
    if (value != null) {
      result
        ..add('favorites')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.editedTime;
    if (value != null) {
      result
        ..add('edited_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.bIsArtist;
    if (value != null) {
      result
        ..add('b_is_artist')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.bHasAnsweredQuestions;
    if (value != null) {
      result
        ..add('b_has_answered_questions')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.artistBio;
    if (value != null) {
      result
        ..add('artist_bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artistUrl;
    if (value != null) {
      result
        ..add('artist_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preferredInstruments;
    if (value != null) {
      result
        ..add('preferred_instruments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.preferredGenres;
    if (value != null) {
      result
        ..add('preferred_genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.preferredPerspectives;
    if (value != null) {
      result
        ..add('preferred_perspectives')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
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
  CollectionUsersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectionUsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loves':
          result.loves.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'playback_history':
          result.playbackHistory.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'favorites':
          result.favorites.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'edited_time':
          result.editedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'b_is_artist':
          result.bIsArtist = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'b_has_answered_questions':
          result.bHasAnsweredQuestions = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'artist_bio':
          result.artistBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'artist_url':
          result.artistUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferred_instruments':
          result.preferredInstruments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'preferred_genres':
          result.preferredGenres.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'preferred_perspectives':
          result.preferredPerspectives.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
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

class _$CollectionUsersRecord extends CollectionUsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final BuiltList<DocumentReference<Object?>>? loves;
  @override
  final BuiltList<DocumentReference<Object?>>? playbackHistory;
  @override
  final BuiltList<DocumentReference<Object?>>? favorites;
  @override
  final DateTime? editedTime;
  @override
  final bool? bIsArtist;
  @override
  final bool? bHasAnsweredQuestions;
  @override
  final String? artistBio;
  @override
  final String? artistUrl;
  @override
  final BuiltList<DocumentReference<Object?>>? preferredInstruments;
  @override
  final BuiltList<DocumentReference<Object?>>? preferredGenres;
  @override
  final BuiltList<DocumentReference<Object?>>? preferredPerspectives;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CollectionUsersRecord(
          [void Function(CollectionUsersRecordBuilder)? updates]) =>
      (new CollectionUsersRecordBuilder()..update(updates))._build();

  _$CollectionUsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.loves,
      this.playbackHistory,
      this.favorites,
      this.editedTime,
      this.bIsArtist,
      this.bHasAnsweredQuestions,
      this.artistBio,
      this.artistUrl,
      this.preferredInstruments,
      this.preferredGenres,
      this.preferredPerspectives,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.ffRef})
      : super._();

  @override
  CollectionUsersRecord rebuild(
          void Function(CollectionUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionUsersRecordBuilder toBuilder() =>
      new CollectionUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionUsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        loves == other.loves &&
        playbackHistory == other.playbackHistory &&
        favorites == other.favorites &&
        editedTime == other.editedTime &&
        bIsArtist == other.bIsArtist &&
        bHasAnsweredQuestions == other.bHasAnsweredQuestions &&
        artistBio == other.artistBio &&
        artistUrl == other.artistUrl &&
        preferredInstruments == other.preferredInstruments &&
        preferredGenres == other.preferredGenres &&
        preferredPerspectives == other.preferredPerspectives &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            email
                                                                                .hashCode),
                                                                        displayName
                                                                            .hashCode),
                                                                    photoUrl
                                                                        .hashCode),
                                                                loves.hashCode),
                                                            playbackHistory
                                                                .hashCode),
                                                        favorites.hashCode),
                                                    editedTime.hashCode),
                                                bIsArtist.hashCode),
                                            bHasAnsweredQuestions.hashCode),
                                        artistBio.hashCode),
                                    artistUrl.hashCode),
                                preferredInstruments.hashCode),
                            preferredGenres.hashCode),
                        preferredPerspectives.hashCode),
                    uid.hashCode),
                createdTime.hashCode),
            phoneNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionUsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('loves', loves)
          ..add('playbackHistory', playbackHistory)
          ..add('favorites', favorites)
          ..add('editedTime', editedTime)
          ..add('bIsArtist', bIsArtist)
          ..add('bHasAnsweredQuestions', bHasAnsweredQuestions)
          ..add('artistBio', artistBio)
          ..add('artistUrl', artistUrl)
          ..add('preferredInstruments', preferredInstruments)
          ..add('preferredGenres', preferredGenres)
          ..add('preferredPerspectives', preferredPerspectives)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CollectionUsersRecordBuilder
    implements Builder<CollectionUsersRecord, CollectionUsersRecordBuilder> {
  _$CollectionUsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  ListBuilder<DocumentReference<Object?>>? _loves;
  ListBuilder<DocumentReference<Object?>> get loves =>
      _$this._loves ??= new ListBuilder<DocumentReference<Object?>>();
  set loves(ListBuilder<DocumentReference<Object?>>? loves) =>
      _$this._loves = loves;

  ListBuilder<DocumentReference<Object?>>? _playbackHistory;
  ListBuilder<DocumentReference<Object?>> get playbackHistory =>
      _$this._playbackHistory ??= new ListBuilder<DocumentReference<Object?>>();
  set playbackHistory(
          ListBuilder<DocumentReference<Object?>>? playbackHistory) =>
      _$this._playbackHistory = playbackHistory;

  ListBuilder<DocumentReference<Object?>>? _favorites;
  ListBuilder<DocumentReference<Object?>> get favorites =>
      _$this._favorites ??= new ListBuilder<DocumentReference<Object?>>();
  set favorites(ListBuilder<DocumentReference<Object?>>? favorites) =>
      _$this._favorites = favorites;

  DateTime? _editedTime;
  DateTime? get editedTime => _$this._editedTime;
  set editedTime(DateTime? editedTime) => _$this._editedTime = editedTime;

  bool? _bIsArtist;
  bool? get bIsArtist => _$this._bIsArtist;
  set bIsArtist(bool? bIsArtist) => _$this._bIsArtist = bIsArtist;

  bool? _bHasAnsweredQuestions;
  bool? get bHasAnsweredQuestions => _$this._bHasAnsweredQuestions;
  set bHasAnsweredQuestions(bool? bHasAnsweredQuestions) =>
      _$this._bHasAnsweredQuestions = bHasAnsweredQuestions;

  String? _artistBio;
  String? get artistBio => _$this._artistBio;
  set artistBio(String? artistBio) => _$this._artistBio = artistBio;

  String? _artistUrl;
  String? get artistUrl => _$this._artistUrl;
  set artistUrl(String? artistUrl) => _$this._artistUrl = artistUrl;

  ListBuilder<DocumentReference<Object?>>? _preferredInstruments;
  ListBuilder<DocumentReference<Object?>> get preferredInstruments =>
      _$this._preferredInstruments ??=
          new ListBuilder<DocumentReference<Object?>>();
  set preferredInstruments(
          ListBuilder<DocumentReference<Object?>>? preferredInstruments) =>
      _$this._preferredInstruments = preferredInstruments;

  ListBuilder<DocumentReference<Object?>>? _preferredGenres;
  ListBuilder<DocumentReference<Object?>> get preferredGenres =>
      _$this._preferredGenres ??= new ListBuilder<DocumentReference<Object?>>();
  set preferredGenres(
          ListBuilder<DocumentReference<Object?>>? preferredGenres) =>
      _$this._preferredGenres = preferredGenres;

  ListBuilder<DocumentReference<Object?>>? _preferredPerspectives;
  ListBuilder<DocumentReference<Object?>> get preferredPerspectives =>
      _$this._preferredPerspectives ??=
          new ListBuilder<DocumentReference<Object?>>();
  set preferredPerspectives(
          ListBuilder<DocumentReference<Object?>>? preferredPerspectives) =>
      _$this._preferredPerspectives = preferredPerspectives;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CollectionUsersRecordBuilder() {
    CollectionUsersRecord._initializeBuilder(this);
  }

  CollectionUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _loves = $v.loves?.toBuilder();
      _playbackHistory = $v.playbackHistory?.toBuilder();
      _favorites = $v.favorites?.toBuilder();
      _editedTime = $v.editedTime;
      _bIsArtist = $v.bIsArtist;
      _bHasAnsweredQuestions = $v.bHasAnsweredQuestions;
      _artistBio = $v.artistBio;
      _artistUrl = $v.artistUrl;
      _preferredInstruments = $v.preferredInstruments?.toBuilder();
      _preferredGenres = $v.preferredGenres?.toBuilder();
      _preferredPerspectives = $v.preferredPerspectives?.toBuilder();
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollectionUsersRecord;
  }

  @override
  void update(void Function(CollectionUsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionUsersRecord build() => _build();

  _$CollectionUsersRecord _build() {
    _$CollectionUsersRecord _$result;
    try {
      _$result = _$v ??
          new _$CollectionUsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              loves: _loves?.build(),
              playbackHistory: _playbackHistory?.build(),
              favorites: _favorites?.build(),
              editedTime: editedTime,
              bIsArtist: bIsArtist,
              bHasAnsweredQuestions: bHasAnsweredQuestions,
              artistBio: artistBio,
              artistUrl: artistUrl,
              preferredInstruments: _preferredInstruments?.build(),
              preferredGenres: _preferredGenres?.build(),
              preferredPerspectives: _preferredPerspectives?.build(),
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loves';
        _loves?.build();
        _$failedField = 'playbackHistory';
        _playbackHistory?.build();
        _$failedField = 'favorites';
        _favorites?.build();

        _$failedField = 'preferredInstruments';
        _preferredInstruments?.build();
        _$failedField = 'preferredGenres';
        _preferredGenres?.build();
        _$failedField = 'preferredPerspectives';
        _preferredPerspectives?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CollectionUsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
