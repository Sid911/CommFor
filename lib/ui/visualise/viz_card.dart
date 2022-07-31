import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';

class VizCard extends StatelessWidget {
  const VizCard({
    Key? key,
    required this.imageURL,
    required this.name,
  }) : super(key: key);
  final String imageURL;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () {
            final imageProvider = Image.network(imageURL).image;
            showImageViewer(context, imageProvider);
          },
          child: Container(
            width: 400,
            decoration: BoxDecoration(color: Colors.blueGrey, boxShadow: [
              BoxShadow(
                color: const Color(0xFF2C3111).withOpacity(0.6),
                blurRadius: 10,
                offset: const Offset(0, 10),
              )
            ]),
            child: Column(
              children: [
                Container(
                  width: 400,
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Image.network(imageURL, fit: BoxFit.fitWidth),
                ),
                Container(
                  width: 400,
                  color: Colors.orange,
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: "HelveticaNeue",
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
