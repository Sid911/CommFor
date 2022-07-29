import 'package:flutter/material.dart';
import 'package:ifri/constants/section_c.dart';
import 'package:ifri/style/custom_button.dart';
import 'package:ifri/style/custom_option.dart';
import 'package:ifri/style/custom_style.dart';
import 'package:ifri/ui/section_b/screen3.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ifri/constants/constants.dart';
import 'package:ifri/ui/section_c/screen20.dart';
import 'package:ifri/ui/home/home_page.dart';

class Screen28 extends StatefulWidget {
  const Screen28({Key? key}) : super(key: key);

  @override
  State<Screen28> createState() => _Screen28State();
}

class _Screen28State extends State<Screen28> {
  DatabaseReference? ref;
  String screenName = "screen_28";
  String _response3 = "", _response4 = "";
  bool isLoading = true;
  SharedPreferences? _sharedPreferences;
  String? userId;
  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    userId = _sharedPreferences!.getString(Constants.USER_ID);
    ref = FirebaseDatabase.instance.ref('forms/${userId!}/1/section_c');
    setData();
  }

  void setResponse3(String value) async {
    _response3 = value;
  }

  void setResponse4(String value) async {
    _response4 = value;
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Container();
    } else {
      return SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: ColoredBox(
            color: const Color(0xFF12160F),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 5.0,
                bottom: 5.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => {navigateToPreviousScreen(context)},
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
                          SectionC.SECTION_C_SECTION_11,
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
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: const SizedBox(
                          height: 20,
                          width: 300,
                          child: Divider(
                            color: Color(0xffD1D0BD),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(SectionC.SECTION_C_QUESTION_51,
                                style: CustomStyle.questionTitle),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomOption.optionRadioButtons(const [
                              'Grievance',
                              'Development',
                              'Land rights',
                              'Dispute/conflict resolution',
                              'Private benefits and schemes',
                              'Banking and credit',
                              'Others',
                            ], true, _response3, setResponse3),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(SectionC.SECTION_C_QUESTION_52,
                                style: CustomStyle.questionTitle),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomOption.optionRadioButtons(const [
                              'Once a day',
                              'Multiple times in a week',
                              'Once a week',
                              'Once in two weeks',
                              'Once in a month',
                              'Once in three months',
                              'Once in six months',
                              'Once in a year',
                              'Never',
                            ], true, _response4, setResponse4),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              onTap: () => syncData(context),
                              splashColor: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(2),
                              child: CustomButton.submitButton),
                        ],
                      ),
                      const SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ));
    }
  }

  void setData() async {
    final res3 = await ref!
        .child(screenName)
        .child("question_51")
        .child("response")
        .get();

    final res4 = await ref!
        .child(screenName)
        .child("question_52")
        .child("response")
        .get();

    setState(() {
      _response3 = null == res3.value ? "" : res3.value.toString();
      _response4 = null == res4.value ? "" : res4.value.toString();
      isLoading = false;
    });
  }

  void syncData(BuildContext context) async {
    await ref!.update({
      screenName: {
        "question_51": {
          "question": SectionC.SECTION_C_QUESTION_51,
          "response": _response3
        },
        "question_52": {
          "question": SectionC.SECTION_C_QUESTION_52,
          "response": _response4
        }
      }
    }).whenComplete(() => navigateToNextScreen(context));
  }

  navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return const HomePage();
        },
      ),
    );
  }

  navigateToPreviousScreen(BuildContext context) {
    Navigator.of(context).pop();
  }
}