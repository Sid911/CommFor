import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class FirebaseAuthService {
  Logger logger = Logger();
  User? get user => FirebaseAuth.instance.currentUser;

  Stream<User?> get authStream => FirebaseAuth.instance.userChanges();

  Future<UserCredential?> registerWithEmailAndPassword(
      {required String email,
      required String password,
      required String org,
      required String username,
      required String country}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final db = FirebaseFirestore.instance;
      db.collection("users").doc(credential.user!.uid).set(
        {
          "username": username,
          "organisation": org,
          "country": country,
        },
        SetOptions(merge: true),
      ).onError(
        (error, stackTrace) => logger.e(
          "Error settings the account details",
          error,
          stackTrace,
        ),
      );
      return credential;
    } on Exception catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<UserCredential?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        logger.e('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        logger.e('Wrong password provided for that user.');
      }
    } catch (e) {
      logger.e(e);
    }
    return null;
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
