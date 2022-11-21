import 'package:flutter/material.dart';

class CustomBubbleWidget extends StatefulWidget {
  final Widget child;
  final double size;
  const CustomBubbleWidget({Key? key, required this.size, required this.child})
      : super(key: key);

  @override
  State<CustomBubbleWidget> createState() => _CustomBubbleWidgetState();
}

class _CustomBubbleWidgetState extends State<CustomBubbleWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  // late Animation<Tween>

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    double value = 0;
    controller = AnimationController(
      vsync: this,
      lowerBound: 0.8,
      duration: const Duration(seconds: 1),
    );
    controller.forward();
    controller.repeat(reverse: true);
    controller.addListener(() {
      print(controller.value);
      setState(() {
        value = controller.value;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size * controller.value,
      width: widget.size * controller.value,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: widget.child,
    );
  }
}
