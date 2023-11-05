import 'dart:convert';

import 'package:conference_2023/model/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanCodePage extends StatelessWidget {
  const ScanCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
      ),
      body: Center(
        child: MobileScanner(
          onDetect: (capture) {
            try {
              final data = capture.barcodes.firstOrNull?.rawValue;
              if (data == null) {
                return;
              }
              final json = jsonDecode(data) as Map<String, dynamic>;
              final profile = Profile.fromJson(json);
              Navigator.of(context).pop(profile);
            } catch (_) {
              return;
            }
          },
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
