import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FftestFirebaseUser {
  FftestFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

FftestFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FftestFirebaseUser> fftestFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FftestFirebaseUser>((user) => currentUser = FftestFirebaseUser(user));
