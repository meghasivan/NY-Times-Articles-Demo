import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return const Scaffold(
      backgroundColor: Color(0xFF1AC79C),
      body: Center(
        child: ZoomInOutWidget(
            child: SizedBox(
                child: Text(
          'NY Times Most Popular',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
        ))),
      ),
    );
  }
}

class ZoomInOutWidget extends StatefulWidget {
  final Widget child;

  const ZoomInOutWidget({super.key, required this.child});

  @override
  _ZoomInOutWidgetState createState() => _ZoomInOutWidgetState();
}

class _ZoomInOutWidgetState extends State<ZoomInOutWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 1.3).animate(_controller);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 50)).then((value) =>
            _controller.reverse().then((value) => _controller.stop()));
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
