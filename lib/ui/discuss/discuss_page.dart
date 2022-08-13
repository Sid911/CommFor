import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:ifri/style/custom_style.dart';

class DiscussPage extends StatefulWidget {
  const DiscussPage({Key? key}) : super(key: key);

  @override
  State<DiscussPage> createState() => _DiscussPageState();
}

class _DiscussPageState extends State<DiscussPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Forum"),
        backgroundColor: Colors.grey.shade900,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            splashRadius: 25,
            onPressed: () {},
            icon: const Icon(
              FlutterRemix.search_2_line,
            ),
          ),
          IconButton(
            splashRadius: 25,
            onPressed: () {},
            icon: const Icon(
              FlutterRemix.add_fill,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              InfoCard(
                info: "Feel free to ask questions and reply to other people. "
                    "Also any help in finding bugs is appreciated :)",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.info}) : super(key: key);

  final String info;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      color: Colors.grey.shade900,
      child: Text(
        info,
        style: CustomStyle.answer.copyWith(
          fontSize: 12,
        ),
      ),
    );
  }
}
