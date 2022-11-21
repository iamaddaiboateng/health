import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_cop/custom_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double opacity = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        opacity = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/base_image.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            child: ListView(
              children: [
                const SizedBox(
                  height: 150,
                ),
                Container(
                  margin: const EdgeInsets.all(24),
                  width: 327,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(1, 150, 234, 0.6),
                          offset: Offset(0, 15),
                          blurRadius: 20,
                          spreadRadius: -15),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 12),
                            padding: const EdgeInsets.symmetric(
                                vertical: 7.0, horizontal: 18),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFEFDAF7)),
                            child: const Text(
                              "Close",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF8E44AD),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.more_vert),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Medication",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: const [
                          Text(
                            "9:00 AM",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            height: 10,
                            child: VerticalDivider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Today, 6 DEC",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "40 mins",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 8,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Jane Cooper",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.video_camera_back,
                            color: Color(0xFFB75FDC),
                            size: 14,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Online",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              title: "Join the class",
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 12),
                            padding: const EdgeInsets.symmetric(
                                vertical: 7.0, horizontal: 18),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFCDF1FF)),
                            child: const Icon(
                              CupertinoIcons.chat_bubble,
                              color: Color(0xFF0064A7),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Text(
                    "Overview",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
                  child: Text(
                    "New to Fitness is program designed to get your activated on your fitness journey! ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ),
                const ListTile(
                  leading: CircleAvatar(),
                  title: Text(
                    "Jane Cooper",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  subtitle: Text(
                    "Fitness Coach",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
          ),
          Container(
            height: 88,
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(
                    0xFF161B46,
                  ),
                  const Color(
                    0xFF161B46,
                  ).withAlpha(0),
                ],
              ),
            ),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
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
                        color: Color(0xFF24AE5F),
                      ),
                      backgroundColor: Color(0xFFEBFBF2),
                      leading: CircleAvatar(
                        radius: 7,
                        backgroundColor: Color(0xFF24AE5F),
                        foregroundColor: Color(0xFFEBFBF2),
                        child: Icon(
                          Icons.done,
                          size: 8,
                        ),
                      ),
                      content: Text("Date and time successfully rescheduled"),
                      actions: [SizedBox()]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
