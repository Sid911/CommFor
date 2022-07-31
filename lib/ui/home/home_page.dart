import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ifri/services/auth_service/firebase_auth_impl.dart';
import 'package:ifri/ui/capture/capture_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FirebaseAuthService authService;
  @override
  void initState() {
    super.initState();
    authService = context.read<FirebaseAuthService>();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          "assets/images/BG Image@2x.png",
          height: size.height,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text("For ManGoES"),
                ),
              ),
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                  onPressed: () {
                    authService.logout();
                  },
                  icon: const Icon(
                    Icons.logout,
                  ),
                )
              ],
            ),
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const CapturePage()),
                      );
                    },
                    child: Container(
                      width: size.width - 40,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF12160F),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.camera_roll_outlined,
                            color: Colors.white,
                            size: 60,
                          ),
                          Text(
                            "Capture",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "HelveticaNeue",
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: (size.width - 40).abs(),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF505921),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.data_exploration_outlined,
                            color: Colors.white,
                            size: 60,
                          ),
                          Text(
                            "Visualise",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "HelveticaNeue",
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Coming Soon!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "HelveticaNeue",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: size.width - 40,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF7D893B).withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.chat_outlined,
                            color: Colors.white,
                            size: 60,
                          ),
                          Text(
                            "Discuss",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "HelveticaNeue",
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
