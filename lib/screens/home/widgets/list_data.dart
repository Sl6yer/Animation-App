import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  const ListData({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.margin,
  });

  final String title;
  final String subTitle;
  final ImageProvider image;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: const Color.fromARGB(66, 158, 158, 158),
            width: 1.0,
          ),
          bottom: BorderSide(
            color: const Color.fromARGB(66, 158, 158, 158),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: image),
            ),
          ),
          SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
