import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ifri/services/auth_service/firebase_auth_impl.dart';
import 'package:provider/provider.dart';

class ForgotPasswordCard extends StatefulWidget {
  const ForgotPasswordCard({Key? key}) : super(key: key);

  @override
  _ForgotPasswordCardState createState() => _ForgotPasswordCardState();
}

class _ForgotPasswordCardState extends State<ForgotPasswordCard> {
  late FirebaseAuthService authService;

  @override
  void initState() {
    super.initState();
    authService = context.read<FirebaseAuthService>();
  }

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
        child: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Enter your email and we'll send you a link to reset your password",
                  style: TextStyle(
                    color: Color(0xFFD1D0BD),
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                    color: Color(0xFFD1D0BD),
                    fontFamily: 'HelveticaNeue',
                  ),
                  cursorColor: const Color(0xFFD1D0BD),
                  decoration: const InputDecoration(
                    labelText: 'Email*',
                    labelStyle: TextStyle(color: Color(0xFFD1D0BD)),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 100, top: 20),
                child: MaterialButton(
                  onPressed: () async {
                    const res = null;
                    // final res = await authService.registerWithEmailAndPassword(
                    //   email: emailController.text.trim(),
                    //   password: passwordController.text.trim(),
                    //   org: orgNameController.text.trim(),
                    //   username: usernameController.text.trim(),
                    //   country: contNameController.text.trim(),
                    // );
                    // handle errors better as we need to check for weak password etc.
                    if (res == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "We cannot find your email.",
                          ),
                        ),
                      );
                    }
                    Navigator.pop(context);
                  },
                  color: const Color(0xFFD1D0BD),
                  clipBehavior: Clip.antiAlias,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF12160F),
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
