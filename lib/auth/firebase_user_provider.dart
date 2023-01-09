import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class QuizzappFirebaseUser {
  QuizzappFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

QuizzappFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<QuizzappFirebaseUser> quizzappFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<QuizzappFirebaseUser>(
      (user) {
        currentUser = QuizzappFirebaseUser(user);
        return currentUser!;
      },
    );
