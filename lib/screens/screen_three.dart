import 'package:first_week/custom_widgets/container/custom_container.dart';
import 'package:first_week/screens/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Screen Three'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ContainerWidget(
              height: 150,
              width: 150,
              color: Colors.green,
              child: Center(child: Text('Screen three')),
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ScreenTwo(firststring: 'helo', secondstring: 'sir'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
