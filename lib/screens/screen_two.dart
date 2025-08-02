import 'package:first_week/custom_widgets/container/custom_container.dart';
import 'package:first_week/screens/screen_three.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String firststring;
  final String secondstring;
  const ScreenTwo({
    super.key,
    required this.firststring,
    required this.secondstring,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text('Screen two')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ContainerWidget(
              height: 150,
              width: 150,
              color: Colors.red,
              child: Center(child: Text('screen two')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenThree()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
//navigation//