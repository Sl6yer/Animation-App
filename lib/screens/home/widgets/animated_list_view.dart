import 'package:animations/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  const AnimatedListView({super.key, required this.listSlidePosition});

  final Animation<EdgeInsets> listSlidePosition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Estudar Flutter',
          subTitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('images/profile.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar Flutter 2',
          subTitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('images/profile.jpg'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
