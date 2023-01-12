import 'dart:math' as math;

import 'package:flutter/material.dart';

final _random = math.Random();

class Logo {
  Logo(this.position);

  Offset position = Offset.zero;
  double angle = 0;

  final double rotateSpeed = _random.nextDouble() * math.pi * 0.01;
  final double speed = _random.nextDouble() * 1 + 0.5;
  final double size = _random.nextDouble() * 60 + 30;
}

final logos = ValueNotifier<List<Logo>>([]);

class BackgroundCanvas extends StatefulWidget {
  const BackgroundCanvas({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  _BackgroundCanvasState createState() => _BackgroundCanvasState();
}

class _BackgroundCanvasState extends State<BackgroundCanvas>
    with SingleTickerProviderStateMixin {
  late final _controller =
      AnimationController(vsync: this, duration: const Duration(days: 1))
        ..addListener(
          () {
            final update = [...logos.value];
            for (final logo in update) {
              logo.position += Offset(0, -logo.speed);
              logo.angle += logo.rotateSpeed;
              if (logo.position.dy < widget.size.height / 3) {
                final index = logos.value.indexOf(logo);
                update[index] = generateLogo();
              }
            }
            logos.value = update;
          },
        );

  @override
  void initState() {
    logos.value = List.generate(10, (index) => generateLogo());
    _controller.forward();
    super.initState();
  }

  Logo generateLogo() => Logo(Offset(
        widget.size.width * _random.nextDouble(),
        widget.size.height,
      ));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: logos,
      builder: (context, List<Logo> value, _) => _Background(logos: value),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _Background extends StatelessWidget {
  const _Background({Key? key, required this.logos}) : super(key: key);

  final List<Logo> logos;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        for (final logo in logos)
          Positioned(
            top: logo.position.dy,
            left: logo.position.dx,
            child: Opacity(
              opacity: (logo.position.dy - height / 3) / height / 3,
              child: Transform.rotate(
                angle: logo.angle,
                child: FlutterLogo(
                  size: logo.size,
                ),
              ),
            ),
          )
      ],
    );
  }
}
