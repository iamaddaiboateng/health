import 'package:flutter/material.dart';

class GoalWidget extends StatefulWidget {
  final double height, width;
  final String image, title;
  final BorderRadius radius;
  final bool selected;
  final ValueChanged select;
  const GoalWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.image,
    required this.title,
    required this.select,
    this.selected = false,
    this.radius = const BorderRadius.all(
      Radius.circular(1000),
    ),
  }) : super(key: key);

  @override
  State<GoalWidget> createState() => _GoalWidgetState();
}

class _GoalWidgetState extends State<GoalWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      lowerBound: 0.9,
      duration: const Duration(seconds: 1),
    );
    animationController.repeat(reverse: true);
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.select(widget.title);
      },
      child: SizedBox(
        height: widget.selected
            ? widget.height
            : widget.height * animationController.value,
        width: widget.selected
            ? widget.width
            : widget.width * animationController.value,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(widget.image),
            Visibility(
              visible: widget.selected,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: widget.radius,
                  color: Colors.blue.withOpacity(0.4),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 20,
              child: Visibility(
                visible: widget.selected,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: const Color(0xFF00ACE9),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: const Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ),
            const Positioned(
                bottom: 20,
                right: 10,
                left: 10,
                child: Center(
                  child: Text(
                    "",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
