import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ifri/services/auth_service/firebase_auth_impl.dart';
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
        Scaffold(
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
            children: [],
          ),
        ),
      ],
    );
  }
}
