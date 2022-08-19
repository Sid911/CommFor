import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:ifri/constants/section_d.dart';
import 'package:ifri/services/auth_service/firebase_auth_impl.dart';
import 'package:ifri/style/custom_button.dart';
import 'package:ifri/style/custom_option.dart';
import 'package:ifri/style/custom_style.dart';
import 'package:ifri/ui/section_d/screen30.dart';
import 'package:provider/provider.dart';

class Screen29 extends StatefulWidget {
  const Screen29({Key? key, required this.formName}) : super(key: key);
  final String formName;
  @override
  State<Screen29> createState() => _Screen29State();
}

class _Screen29State extends State<Screen29> {
  DatabaseReference? ref;
  String screenName = "screen_29";
  String _response3 = "";
  bool isLoading = true;

  TextEditingController question55Controller1 = TextEditingController();
  TextEditingController question55Controller2 = TextEditingController();
  TextEditingController question55Controller3 = TextEditingController();
  TextEditingController question55Controller4 = TextEditingController();
  TextEditingController question55Controller5 = TextEditingController();
  TextEditingController question55Controller6 = TextEditingController();
  TextEditingController question55Controller7 = TextEditingController();
  TextEditingController question55Controller8 = TextEditingController();
  TextEditingController question55Controller9 = TextEditingController();
  TextEditingController question55Controller10 = TextEditingController();
  TextEditingController question55Controller11 = TextEditingController();
  TextEditingController question55Controller12 = TextEditingController();
  TextEditingController question55Controller13 = TextEditingController();
  TextEditingController question55Controller14 = TextEditingController();
  TextEditingController question55Controller15 = TextEditingController();
  TextEditingController question55Controller16 = TextEditingController();
  TextEditingController question55Controller17 = TextEditingController();
  TextEditingController question55Controller18 = TextEditingController();
  TextEditingController question55Controller19 = TextEditingController();
  TextEditingController question55Controller20 = TextEditingController();
  TextEditingController question55Controller21 = TextEditingController();
  TextEditingController question55Controller22 = TextEditingController();

  late FirebaseAuthService authService;

  String? userId;
  @override
  void initState() {
    super.initState();
    authService = context.read<FirebaseAuthService>();
    initialize();
  }

  void initialize() async {
    userId = authService.user!.uid;
    ref = FirebaseDatabase.instance
        .ref('forms/${userId!}/${widget.formName}/section_d');
    setData();
  }

  void setResponse3(String value) async {
    _response3 = value;
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
                            SectionD.SECTION_D_SECTION_1,
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
                              const Text(SectionD.SECTION_D_QUESTION_54,
                                  style: CustomStyle.questionTitle),
                              const SizedBox(
                                height: 5,
                              ),
                              CustomOption.optionRadioButtons(const [
                                'Private management',
                                'Community management – Formal',
                                'Community management – Informal',
                                'Government management',
                                'Co-management – Community and Government',
                                'Co-management – Community and NGO',
                                'Co-management – Community and Private company',
                                'Others',
                              ], true, _response3, setResponse3),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
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
                              const Text(SectionD.SECTION_D_QUESTION_55,
                                  style: CustomStyle.questionTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(SectionD.SECTION_D_QUESTION_55_POINT_1,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller1,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller2,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(SectionD.SECTION_D_QUESTION_55_POINT_2,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller3,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller4,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(SectionD.SECTION_D_QUESTION_55_POINT_3,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller5,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller6,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(SectionD.SECTION_D_QUESTION_55_POINT_4,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller7,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller8,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(SectionD.SECTION_D_QUESTION_55_POINT_5,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller9,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller10,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(SectionD.SECTION_D_QUESTION_55_POINT_6,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller11,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller12,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(SectionD.SECTION_D_QUESTION_55_POINT_7,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller13,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller14,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(SectionD.SECTION_D_QUESTION_55_POINT_8,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller15,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller16,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(SectionD.SECTION_D_QUESTION_55_POINT_9,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller15,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller16,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_POINT_10,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller15,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller16,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_POINT_11,
                                  style: CustomStyle.questionBoldTitle),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_1,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller15,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  SectionD.SECTION_D_QUESTION_55_PROPERTY_2,
                                  style: CustomStyle.optionYesNo),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  controller: question55Controller16,
                                  style: CustomStyle.answer,
                                  textAlign: TextAlign.start,
                                  decoration:
                                      CustomStyle.answerInputDecoration),
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
                                child: CustomButton.nextButton),
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
        ),
      );
    }
  }

  void setData() async {
    final res3 = await ref!
        .child(screenName)
        .child("question_54")
        .child("response")
        .get();

    ref!
        .child(screenName)
        .child("question_55")
        .child("response")
        .get()
        .then((snapshot) {
      if (snapshot.exists) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          int p = -1;
          if (SectionD.SECTION_D_QUESTION_55_POINT_1 == key) {
            p = 0;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_2 == key) {
            p = 1;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_3 == key) {
            p = 2;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_4 == key) {
            p = 3;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_5 == key) {
            p = 4;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_6 == key) {
            p = 5;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_7 == key) {
            p = 6;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_8 == key) {
            p = 7;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_9 == key) {
            p = 8;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_10 == key) {
            p = 9;
          } else if (SectionD.SECTION_D_QUESTION_55_POINT_11 == key) {
            p = 11;
          }
          Map<dynamic, dynamic> valuesRes = value as Map<dynamic, dynamic>;
          valuesRes.forEach((key1, value1) {
            int c = -1;
            if (SectionD.SECTION_D_QUESTION_55_PROPERTY_1 == key1) {
              c = 1;
            } else if (SectionD.SECTION_D_QUESTION_55_PROPERTY_2 == key1) {
              c = 2;
            }

            if (p > -1 && c > 0) {
              int position = (p * 2) + c;
              if (position == 1) {
                question55Controller1.text = value1;
              } else if (position == 2) {
                question55Controller2.text = value1;
              } else if (position == 3) {
                question55Controller3.text = value1;
              } else if (position == 4) {
                question55Controller4.text = value1;
              } else if (position == 5) {
                question55Controller5.text = value1;
              } else if (position == 6) {
                question55Controller6.text = value1;
              } else if (position == 7) {
                question55Controller7.text = value1;
              } else if (position == 8) {
                question55Controller8.text = value1;
              } else if (position == 9) {
                question55Controller9.text = value1;
              } else if (position == 10) {
                question55Controller10.text = value1;
              } else if (position == 11) {
                question55Controller11.text = value1;
              } else if (position == 12) {
                question55Controller12.text = value1;
              } else if (position == 13) {
                question55Controller13.text = value1;
              } else if (position == 14) {
                question55Controller14.text = value1;
              } else if (position == 15) {
                question55Controller15.text = value1;
              } else if (position == 16) {
                question55Controller16.text = value1;
              } else if (position == 17) {
                question55Controller17.text = value1;
              } else if (position == 18) {
                question55Controller18.text = value1;
              } else if (position == 19) {
                question55Controller19.text = value1;
              } else if (position == 20) {
                question55Controller20.text = value1;
              } else if (position == 21) {
                question55Controller21.text = value1;
              } else if (position == 22) {
                question55Controller22.text = value1;
              }
            }
          });
        });
      } else {
        print('No data available');
      }
    });
    setState(() {
      _response3 = null == res3.value ? "" : res3.value.toString();
      isLoading = false;
    });
  }

  void syncData(BuildContext context) async {
    await ref!.update({
      screenName: {
        "question_54": {
          "question": SectionD.SECTION_D_QUESTION_54,
          "response": _response3
        },
        "question_55": {
          "question": SectionD.SECTION_D_QUESTION_55,
          "response": {
            SectionD.SECTION_D_QUESTION_55_POINT_1: {
              SectionD.SECTION_D_QUESTION_55_PROPERTY_1:
                  question55Controller1.text,
              SectionD.SECTION_D_QUESTION_55_PROPERTY_2:
                  question55Controller2.text
            },
            SectionD.SECTION_D_QUESTION_55_POINT_2: {
              SectionD.SECTION_D_QUESTION_55_PROPERTY_1:
                  question55Controller3.text,
              SectionD.SECTION_D_QUESTION_55_PROPERTY_2:
                  question55Controller4.text
            },
            SectionD.SECTION_D_QUESTION_55_POINT_3: {
              SectionD.SECTION_D_QUESTION_55_PROPERTY_1:
                  question55Controller5.text,
              SectionD.SECTION_D_QUESTION_55_PROPERTY_2:
                  question55Controller6.text
            },
            SectionD.SECTION_D_QUESTION_55_POINT_4: {
              SectionD.SECTION_D_QUESTION_55_PROPERTY_1:
                  question55Controller7.text,
              SectionD.SECTION_D_QUESTION_55_PROPERTY_2:
                  question55Controller8.text
            },
            SectionD.SECTION_D_QUESTION_55_POINT_5: {
              SectionD.SECTION_D_QUESTION_55_PROPERTY_1:
                  question55Controller9.text,
              SectionD.SECTION_D_QUESTION_55_PROPERTY_2:
                  question55Controller10.text
            },
            SectionD.SECTION_D_QUESTION_55_POINT_6: {
              SectionD.SECTION_D_QUESTION_55_PROPERTY_1:
                  question55Controller11.text,
              SectionD.SECTION_D_QUESTION_55_PROPERTY_2:
                  question55Controller12.text
            },
            SectionD.SECTION_D_QUESTION_55_POINT_7: {
              SectionD.SECTION_D_QUESTION_55_PROPERTY_1:
                  question55Controller13.text,
              SectionD.SECTION_D_QUESTION_55_PROPERTY_2:
                  question55Controller14.text
            },
            SectionD.SECTION_D_QUESTION_55_POINT_8: {
              SectionD.SECTION_D_QUESTION_55_PROPERTY_1:
                  question55Controller15.text,
              SectionD.SECTION_D_QUESTION_55_PROPERTY_2:
                  question55Controller16.text
            }
          }
        },
      }
    }).whenComplete(() => navigateToNextScreen(context));
  }

  navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return Screen30(formName: widget.formName);
        },
      ),
    );
  }

  navigateToPreviousScreen(BuildContext context) {
    Navigator.of(context).pop();
  }
}
