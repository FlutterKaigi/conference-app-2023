import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_storage.g.dart';

@riverpod
Future<String> imageDownloadUrl(ImageDownloadUrlRef ref, String path) async {
  final ref = FirebaseStorage.instance.ref(path);
  return ref.getDownloadURL();
}
