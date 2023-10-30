import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_storage.g.dart';

@riverpod
Future<String> imageDownloadUrl(ImageDownloadUrlRef ref, String path) async {
  final ref = FirebaseStorage.instance.ref(path);
  try {
    final url = await ref.getDownloadURL();
    return url;
  } catch (e) {
    if (e.toString().contains('object-not-found')) {
      return '';
    }
    rethrow;
  }
}

@riverpod
Reference imageReference(ImageReferenceRef ref, String path) {
  return FirebaseStorage.instance.ref(path);
}
