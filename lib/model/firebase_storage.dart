import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_storage.g.dart';

@riverpod
Future<String> imageDownloadUrl(ImageDownloadUrlRef ref, String path) async {
  final ref = FirebaseStorage.instance.ref(path);
  try {
    final url = await ref.getDownloadURL();
    return url;
  } on FirebaseException catch (e) {
    if (e.code == 'object-not-found') {
      return '';
    }
    rethrow;
  } catch (_) {
    rethrow;
  }
}

@riverpod
Reference imageReference(ImageReferenceRef ref, String path) {
  return FirebaseStorage.instance.ref(path);
}
