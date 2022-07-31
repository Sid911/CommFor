import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:ifri/constants/section_a.dart';
import 'package:ifri/style/custom_button.dart';
import 'package:ifri/style/custom_style.dart';
import 'package:ifri/services/auth_service/firebase_auth_impl.dart';
import 'package:ifri/ui/section_b/screen1.dart';
import 'package:provider/provider.dart';

class CapturePage extends StatefulWidget {
  const CapturePage({Key? key}) : super(key: key);

  @override
  State<CapturePage> createState() => _CapturePageState();
}

const space = SizedBox(
  height: 40,
);

class _CapturePageState extends State<CapturePage> {
  DatabaseReference? ref;
  TextEditingController question1Controller = TextEditingController();
  String screenName = "capture";
  String? userId;

  late FirebaseAuthService authService;

  @override
  void initState() {
    super.initState();
    authService = context.read<FirebaseAuthService>();
    initialize();
  }

  void initialize() async {
    // User should be logged in
    userId = authService.user!.uid;
    ref = FirebaseDatabase.instance.ref('forms/${userId!}/1/section_b');
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF12160F),
        body: Container(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icons/ic_back.png',
                        fit: BoxFit.cover,
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Text(
                        "Site Details : A",
                        style: CustomStyle.screenTitle,
                      ),
                    ),
                    InkWell(
                      onTap: () => {},
                      child: Image.asset(
                        'assets/icons/ic_close.png',
                        fit: BoxFit.cover,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(SectionA.SECTION_A_QUESTION_1,
                          style: CustomStyle.questionTitle),
                      space,
                      TextField(
                          controller: question1Controller,
                          style: CustomStyle.answer,
                          textAlign: TextAlign.start,
                          decoration: CustomStyle.answerInputDecoration),
                      space,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text(
                          SectionA.SECTION_A_QUESTION_1_DETAIL,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "HelveticaNeue",
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      space,
                      space,
                      CustomButton.custom(SectionA.SECTION_A_QUESTION_2),
                      space,
                      space,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text(
                          SectionA.SECTION_A_QUESTION_2_DETAIL,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "HelveticaNeue",
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      space,
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          syncData(context);
                        },
                        splashColor: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(2),
                        child: CustomButton.nextButton),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setData() async {
    final response1 = await ref!
        .child(screenName)
        .child("question_1")
        .child("response")
        .get();
    question1Controller.text =
        null == response1.value ? "" : response1.value.toString();
  }

  void syncData(BuildContext context) async {
    await ref!.update({
      screenName: {
        "question_1": {
          "question": SectionA.SECTION_A_QUESTION_1,
          "response": question1Controller.text.replaceAll(" ", "_")
        },
      }
    }).whenComplete(() => navigateToNextScreen(context));
  }
}

navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) {
        return const Screen1();
      },
    ),
  );
}
