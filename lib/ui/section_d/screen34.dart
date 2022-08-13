import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:ifri/constants/section_d.dart';
import 'package:ifri/services/auth_service/firebase_auth_impl.dart';
import 'package:ifri/style/custom_button.dart';
import 'package:ifri/style/custom_style.dart';
import 'package:ifri/ui/home/home_page.dart';
import 'package:ifri/ui/section_d/screen35.dart';
import 'package:provider/provider.dart';

// Q 66 67
class Screen34 extends StatefulWidget {
  const Screen34({Key? key}) : super(key: key);

  @override
  State<Screen34> createState() => _Screen34State();
}

class _Screen34State extends State<Screen34> {
  DatabaseReference? ref;
  String screenName = "screen_34";
  bool isLoading = true;

  TextEditingController question63Controller1 = TextEditingController();
  TextEditingController question63Controller2 = TextEditingController();
  TextEditingController question63Controller3 = TextEditingController();
  TextEditingController question63Controller4 = TextEditingController();
  TextEditingController question63Controller5 = TextEditingController();
  TextEditingController question63Controller6 = TextEditingController();
  TextEditingController question63Controller7 = TextEditingController();
  TextEditingController question63Controller8 = TextEditingController();
  TextEditingController question63Controller9 = TextEditingController();
  TextEditingController question63Controller10 = TextEditingController();
  TextEditingController question63Controller11 = TextEditingController();
  TextEditingController question63Controller12 = TextEditingController();
  TextEditingController question63Controller13 = TextEditingController();
  TextEditingController question63Controller14 = TextEditingController();
  TextEditingController question63Controller15 = TextEditingController();
  TextEditingController question63Controller16 = TextEditingController();

  String? userId;

  late FirebaseAuthService authService;

  @override
  void initState() {
    super.initState();
    authService = context.read<FirebaseAuthService>();

    initialize();
  }

  void initialize() async {
    userId = authService.user!.uid;

    ref = FirebaseDatabase.instance.ref('forms/${userId!}/1/section_d');
    setData();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Container();
    } else {
      const space = SizedBox(
        height: 20,
      );
      return SafeArea(
        child: Scaffold(
          body: ColoredBox(
            color: const Color(0xFF12160F),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
              child: SingleChildScrollView(
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
                            SectionD.SECTION_D_SECTION_4,
                            style: CustomStyle.screenTitle,
                          ),
                        ),
                        Container(),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: const SizedBox(
                              height: 20,
                              width: 300,
                              child: Divider(color: Color(0xffD1D0BD))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                SectionD.SECTION_D_QUESTION_63,
                                style: CustomStyle.questionTitle,
                              ),
                              space,
                              // 1st Row
                              const Text(SectionD.SECTION_D_QUESTION_63_POINT_1,
                                  style: CustomStyle.questionBoldTitle),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller1,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller2,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_3,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller3,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_4,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller4,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              // 1st Row End
                              // 2nd Row
                              const Text(SectionD.SECTION_D_QUESTION_63_POINT_2,
                                  style: CustomStyle.questionBoldTitle),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller5,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller6,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_3,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller7,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_4,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller8,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              //  2nd Row End
                              // 3rd Row
                              const Text(
                                  SectionD
                                      .SECTION_D_QUESTION_63_POINT_3, // Only these change
                                  style: CustomStyle.questionBoldTitle),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller:
                                      question63Controller9, // Only these change
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller:
                                      question63Controller10, // Only these change
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_3,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller:
                                      question63Controller11, // Only these change
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_4,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller12,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              // 3rd Row End
                              const Text(SectionD.SECTION_D_QUESTION_63_POINT_4,
                                  style: CustomStyle.questionBoldTitle),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller13,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller14,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_3,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller15,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                              const Text(
                                  SectionD.SECTION_D_QUESTION_63_PROPERTY_4,
                                  style: CustomStyle.optionYesNo),
                              space,
                              TextField(
                                  controller: question63Controller16,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              space,
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () => syncData(context),
                              splashColor: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(2),
                              child: CustomButton.nextButton,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }

  void setResponse(String val) {
    setState(() {});
  }

  navigateToPreviousScreen(BuildContext context) {
    Navigator.of(context).pop();
  }

  void setData() async {
    // Set the data at the starting
    // var res = await ref!
    //     .child(screenName)
    //     .child("question_64_A")
    //     .child("response")
    //     .get();
    // if (res.exists) {
    //   final values = res.value! as Map<dynamic, dynamic>;
    //   question64Controller1.text = values["Men"];
    //   question64Controller2.text = values["Women"];
    // }
    // res = await ref!
    //     .child(screenName)
    //     .child('question_64_B')
    //     .child("response")
    //     .get();
    // if (res.exists) {
    //   setResponse(res.value! as String);
    // }
    setState(() {
      isLoading = false;
    });
  }

  void syncData(BuildContext context) async {
    await ref!.update({
      screenName: {
        // Set questions that run on submit button
        //
        // "question_64_A": {
        //   "question": SectionD.SECTION_D_QUESTION_64_A,
        //   "response": {
        //     "Men": question64Controller1.text.trim(),
        //     "Women": question64Controller2.text.trim(),
        //   }
        // },
        // "question_64_B": {
        //   "question": SectionD.SECTION_D_QUESTION_64_B,
        //   "response": response64B
        // }
      }
    }).whenComplete(() => navigateToNextScreen(context));
  }

  navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return const Screen35();
        },
      ),
    );
  }
}
