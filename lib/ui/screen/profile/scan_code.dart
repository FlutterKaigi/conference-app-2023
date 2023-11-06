import 'dart:convert';

import 'package:conference_2023/model/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanCodePage extends StatefulWidget {
  const ScanCodePage({super.key});

  @override
  State<ScanCodePage> createState() => _ScanCodePageState();
}

class _ScanCodePageState extends State<ScanCodePage> {
  // `onDetect` が複数回発火するため、一度スキャン成功したら無視するようにフラグを立てる
  bool _isScanned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
      ),
      body: Center(
        child: MobileScanner(
          onDetect: (capture) {
            if (!context.mounted || _isScanned) {
              return;
            }

            try {
              final data = capture.barcodes.firstOrNull?.rawValue;
              if (data == null) {
                return;
              }
              final json = jsonDecode(data) as Map<String, dynamic>;
              final profile = Profile.fromJson(json);
              _isScanned = true;
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
