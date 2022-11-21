import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:health_cop/custom_button_widget.dart';
import 'package:health_cop/goals_widget.dart';
import 'package:health_cop/reschedule.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  double opacity = 0;
  List<String> selectedGoals = [];

  changeOpacity() {
    setState(() {
      opacity = 1;
    });

    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        opacity = 0;
      });
    });
  }

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
                duration: const Duration(seconds: 1),
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
              SizedBox(
                height: 360,
                child: Stack(
                  children: [
                    Positioned(
                      top: 156,
                      child: FadeInLeft(
                        child: GoalWidget(
                          select: (value) {
                            if (selectedGoals.contains(value)) {
                              selectedGoals.remove(value);
                            } else {
                              selectedGoals.add(value);
                            }
                            setState(() {});
                          },
                          selected: selectedGoals.contains("Eat Healthy"),
                          title: "Eat Healthy",
                          height: 120,
                          width: 53,
                          image: "images/image1.png",
                          radius: const BorderRadius.only(
                            topRight: Radius.circular(
                              1000,
                            ),
                            bottomRight: Radius.circular(
                              1000,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 45,
                      child: FadeInLeft(
                        child: GoalWidget(
                          select: (value) {
                            if (selectedGoals.contains(value)) {
                              selectedGoals.remove(value);
                            } else {
                              selectedGoals.add(value);
                            }
                            setState(() {});
                          },
                          selected: selectedGoals.contains("Lose Weight"),
                          title: "Lose Weight",
                          image: "images/image2.png",
                          height: 149,
                          width: 149,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 219,
                      left: 56,
                      child: FadeInLeft(
                        child: GoalWidget(
                          select: (value) {
                            if (selectedGoals.contains(value)) {
                              selectedGoals.remove(value);
                            } else {
                              selectedGoals.add(value);
                            }
                            setState(() {});
                          },
                          selected: selectedGoals.contains("Define Your Goal"),
                          title: "Define Your Goal",
                          image: "images/image3.png",
                          height: 112,
                          width: 112,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 195,
                      child: FadeInRight(
                        child: GoalWidget(
                          select: (value) {
                            if (selectedGoals.contains(value)) {
                              selectedGoals.remove(value);
                            } else {
                              selectedGoals.add(value);
                            }
                            setState(() {});
                          },
                          selected: selectedGoals.contains("Gain Weight"),
                          title: "Gain Weight",
                          image: "images/image4.png",
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 146,
                      left: 190,
                      child: FadeInRight(
                        child: GoalWidget(
                          select: (value) {
                            if (selectedGoals.contains(value)) {
                              selectedGoals.remove(value);
                            } else {
                              selectedGoals.add(value);
                            }
                            setState(() {});
                          },
                          selected: selectedGoals.contains("Be More Active"),
                          title: "Be More Active",
                          image: "images/image5.png",
                          height: 164,
                          width: 164,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 57,
                      right: 0,
                      child: FadeInRight(
                        child: GoalWidget(
                          select: (value) {
                            if (selectedGoals.contains(value)) {
                              selectedGoals.remove(value);
                            } else {
                              selectedGoals.add(value);
                            }
                            setState(() {});
                          },
                          selected:
                              selectedGoals.contains("Keep Fit / Stay Toned"),
                          title: "Keep Fit / Stay Toned",
                          image: "images/image6.png",
                          height: 136,
                          width: 70,
                          radius: const BorderRadius.only(
                            topLeft: Radius.circular(1000),
                            bottomLeft: Radius.circular(1000),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 210,
                      right: 0,
                      child: FadeInRight(
                        child: GoalWidget(
                          select: (value) {
                            if (selectedGoals.contains(value)) {
                              selectedGoals.remove(value);
                            } else {
                              selectedGoals.add(value);
                            }
                            setState(() {});
                          },
                          selected:
                              selectedGoals.contains("Keep Fit /Stay Toned"),
                          title: "Keep Fit /Stay Toned",
                          image: "images/image7.png",
                          height: 96,
                          width: 40,
                          radius: const BorderRadius.only(
                            topLeft: Radius.circular(1000),
                            bottomLeft: Radius.circular(1000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: CustomButton(onPressed: () {
                  if (selectedGoals.isEmpty) {
                    changeOpacity();
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Reschedule();
                        },
                      ),
                    );
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
