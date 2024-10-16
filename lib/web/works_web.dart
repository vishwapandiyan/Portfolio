import 'package:flutter/material.dart';
import 'package:portfolio_web/components.dart';
import 'package:google_fonts/google_fonts.dart';

/// The main widget for displaying the works section on the web.
class WorksWeb extends StatefulWidget {
  const WorksWeb({Key? key}) : super(key: key);

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    // Get the width of the device
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      // Drawer for navigation
      drawer: const DrawersWeb(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/ezsn_zsmz_220227.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: const TabsWebList(),
            ),
          ];
        },
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 30.0),
                const SansBold("Works", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const AnimatedCard(
                      imagePath: "assets/port.png",
                      height: 200.0,
                      width: 300.0,
                    ),
                    SizedBox(
                      width: widthDevice / 3,
                      child: Column(
                        children: [
                          const SansBold("Portfolio", 30.0),
                          const SizedBox(height: 15.0),
                          const Sans(
                            "Deployed on Web, the portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the back-end.",
                            15.0,
                          ),
                          const SizedBox(height: 15.0),
                          tealContainer("COMPLETED") // Remove const here
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const AnimatedCard(
                      imagePath: "assets/logo speak.jpeg",
                      height: 200.0,
                      width: 300.0,
                      reverse: true,
                    ),
                    SizedBox(
                      width: widthDevice / 3,
                      child: Column(
                        children: [
                          const SansBold("Speaksi", 30.0),
                          const SizedBox(height: 15.0),
                          const Sans(
                            "The SpeakSi project focuses on helping dysarthria patients by translating their spoken words into understandable speech using deep learning and Google API technologies. It also includes a speech therapy feature that assesses pronunciation accuracy, provides feedback, and gamifies the learning process with points and levels.",
                            15.0,
                          ),
                          const SizedBox(height: 15.0),
                          tealContainer("IN PROGRESS") // Remove const here
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const AnimatedCard(
                      imagePath: "assets/iasop.jpeg",
                      height: 200.0,
                      width: 300.0,
                    ),
                    SizedBox(
                      width: widthDevice / 3,
                      child: Column(
                        children: [
                          const SansBold("IASOP", 30.0),
                          const SizedBox(height: 15.0),
                          const Sans(
                            "The IASOP app is an AI-powered platform that predicts disease outbreaks, tracks real-time medicine availability, and connects patients with doctors for consultations. It also integrates with a Compact Pharmaceutical Machine (CPM) to automate medication dispensing, making healthcare more accessible in rural and urban areas.p",
                            15.0,
                          ),
                          const SizedBox(height: 15.0),
                          tealContainer("IN PROGRESS") // Remove const here
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }
}

// This method should not be constant, so no 'const'
Widget tealContainer(String text) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.tealAccent,
        style: BorderStyle.solid,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    padding: const EdgeInsets.all(7.0),
    child: Text(
      text,
      style: GoogleFonts.openSans(fontSize: 15.0),
    ),
  );
}
