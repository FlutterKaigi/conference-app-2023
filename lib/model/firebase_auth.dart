import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_auth.g.dart';

@riverpod
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) => FirebaseAuth.instance;

@riverpod
Stream<String?> currentUserId(CurrentUserIdRef ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return auth.idTokenChanges().map((e) => e?.uid);
}
