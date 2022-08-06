import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TwitterEscanorFirebaseUser {
  TwitterEscanorFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TwitterEscanorFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TwitterEscanorFirebaseUser> twitterEscanorFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TwitterEscanorFirebaseUser>(
            (user) => currentUser = TwitterEscanorFirebaseUser(user));
