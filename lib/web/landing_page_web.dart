import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_web/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  _LandingPageWebState createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: const DrawersWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: const TabsWebList(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // First section: Introduction
            Container(
              height: heightDevice - 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20.0,
                          ),
                          child: const SansBold("Hello I'm", 15.0),
                        ),
                        const SizedBox(height: 15.0),
                        const SansBold("Vishwa Pandiyan", 55.0),
                        const Sans("Flutter developer", 30.0),
                        const SizedBox(height: 15.0),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon:
                                        const FaIcon(FontAwesomeIcons.envelope),
                                    onPressed: () async {
                                      const emailUrl =
                                          'mailto:vishwa.fury@gmail.com';
                                      if (await canLaunch(emailUrl)) {
                                        await launch(emailUrl);
                                      }
                                    },
                                  ),
                                  const Sans("Gmail", 15.0),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.github),
                                    onPressed: () async {
                                      const githubUrl =
                                          'https://github.com/vishwa-pandiyan'; // Replace with your GitHub URL
                                      if (await canLaunch(githubUrl)) {
                                        await launch(githubUrl);
                                      }
                                    },
                                  ),
                                  const Sans("GitHub", 15.0),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon:
                                        const FaIcon(FontAwesomeIcons.linkedin),
                                    onPressed: () async {
                                      const linkedInUrl =
                                          'https://www.linkedin.com/in/vishwa-pandiyan-465326290/';
                                      if (await canLaunch(linkedInUrl)) {
                                        await launch(linkedInUrl);
                                      }
                                    },
                                  ),
                                  const Sans("LinkedIn", 15.0),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    radius: 147.0,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 143.0,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 140.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/circle.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Second section: About me
            Container(
              height: heightDevice / 1.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Image.asset("assets/web.jpg",
                        height: widthDevice / 1.9),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SansBold("About me", 40.0),
                        const SizedBox(height: 15.0),
                        const Sans(
                          "Hello! I'm Vishwa Pandiyan. I specialize in Flutter development.",
                          15.0,
                        ),
                        const Sans(
                          "I am passionate about developing Flutter apps and integrating AI technologies. Open to collaboration on innovative projects—feel free to reach out!",
                          15.0,
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            tealContainer("Flutter"),
                            const SizedBox(width: 7.0),
                            tealContainer("Firebase"),
                            const SizedBox(width: 7.0),
                            tealContainer("Android"),
                            const SizedBox(width: 7.0),
                            tealContainer("iOS"),
                            const SizedBox(width: 7.0),
                            tealContainer("Windows"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Third section: What I do
            Container(
              height: heightDevice / 1.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SansBold("What I do?", 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      AnimatedCard(
                        imagePath: "assets/webL.png",
                        text: "Web development",
                      ),
                      AnimatedCard(
                        imagePath: "assets/app.png",
                        text: "App development",
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                      AnimatedCard(
                        imagePath: "assets/firebase.png",
                        text: "Back-end development",
                      ),
                      AnimatedCard(
                        imagePath: "assets/figma.png",
                        text: "UI/UX Designing",
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Fourth section: Contact form
            const SizedBox(height: 15.0),
            const ContactFormWeb(),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
