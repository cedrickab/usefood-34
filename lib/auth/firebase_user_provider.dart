import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UseFoodFirebaseUser {
  UseFoodFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

UseFoodFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UseFoodFirebaseUser> useFoodFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<UseFoodFirebaseUser>(
      (user) {
        currentUser = UseFoodFirebaseUser(user);
        return currentUser!;
      },
    );
