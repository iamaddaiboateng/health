import 'package:bubbles_selection/bubbles_selection.dart';
import 'package:flutter/material.dart';
import 'package:health_cop/custom_button_widget.dart';
import 'package:health_cop/reschedule.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  double opacity = 0;
  int position = 0;
  double animatedSize = 10.0;

  List<String> selectedGoals = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.arrow_back),
                        Text(
                          "6/7",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Skip",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  children: [
                    ...List.generate(
                      7,
                      (index) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Divider(
                            color: index != 6 ? Colors.blue : Colors.grey,
                            thickness: 3.4,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  "What are Your \nWellness Goals?",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
              AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(seconds: 2),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const MaterialBanner(
                      contentTextStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFE74C3C),
                      ),
                      backgroundColor: Color(0xFFFFF2F0),
                      leading: Icon(
                        Icons.info,
                        color: Color(0xFFE74C3C),
                      ),
                      content: Text("This question cannot be left unanswered"),
                      actions: [
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              BubbleSelection(
                  onSelect: (bubble) {},
                  onRemoved: (bubble) {},
                  size: const Size(400, 300),
                  bubbles: [
                    Bubble(text: "Eat Healthy", scale: 0.6),
                    Bubble(text: "Lose Weight", scale: 0.6),
                    Bubble(text: "Define \nYour Goal", scale: 0.7),
                    Bubble(text: "Gain Weight", scale: 0.6),
                    Bubble(text: "Be More Active", scale: 0.6),
                    Bubble(text: "Keep Fit \n/ Stay Toned", scale: 0.7),
                    Bubble(text: "Reduce Stress", scale: 0.6),
                  ],
                  selectedBubbles: const []),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: CustomButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Reschedule();
                      },
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
