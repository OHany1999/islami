import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  static const String routeName = 'radio';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        SizedBox(height: 30.0,),
        Text('إذاعة القرآن الكريم',style: TextStyle(fontSize: 25),),
        SizedBox(height: 40.0,),
        Image.asset('assets/images/play_bottom.png'),
      ],
    );
  }
}
