import 'package:url_launcher/url_launcher.dart';

Future<bool> launchInExternalApp(Uri url) async {
  final canLaunch = await canLaunchUrl(url);
  if (!canLaunch) {
    return false;
  }

  return await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  );
}
