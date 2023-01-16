import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AlephFirebaseUser {
  AlephFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AlephFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AlephFirebaseUser> alephFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AlephFirebaseUser>(
      (user) {
        currentUser = AlephFirebaseUser(user);
        return currentUser!;
      },
    );
