import 'package:flutter/material.dart';
import 'package:test/features/ui/pages/emotions_page/widgets/my_circle.dart';

class FeelingsView extends StatelessWidget {
  const FeelingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          MyCircle(image: "assets/images/radost.png", emotion: "Радость"),
          MyCircle(image: "assets/images/strak.png", emotion: "Страх"),
          MyCircle(image: "assets/images/stvo.png", emotion: "Бешенство"),
          MyCircle(image: "assets/images/sad.png", emotion: "Грусть"),
          MyCircle(image: "assets/images/spokoi.png", emotion: "Спокойствие"),
          MyCircle(image: "assets/images/sila.png", emotion: "Сила"),
        ],
      ),
    );
  }
}