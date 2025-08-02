// scaffols s hum n screen banate hain

import 'package:first_week/custom_widgets/container/custom_container.dart';
import 'package:first_week/custom_widgets/icon/custom_icons.dart';
import 'package:first_week/custom_widgets/text/Custom_Text.dart';
import 'package:first_week/screens/screen_two.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // scaffold m 3 chezain hain
    // appbar
    // body
    // bottom navigation
    // floating buttton
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ContainerWidget(height: 150, width: 150, color: Colors.red),
                ContainerWidget(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                  child: Center(child: Text('Home Screen')),
                  onTap: () {},
                ),
                ContainerWidget(height: 150, width: 150, color: Colors.blue),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                ContainerWidget(height: 150, width: 150, color: Colors.red),
                ContainerWidget(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                  onTap: () {},
                ),
                ContainerWidget(height: 150, width: 150, color: Colors.blue),
              ],
            ),
            //text screen//
            TextWidget(
              text: 'hello world',
              color: Colors.red,
              fontweight: FontWeight.w200,
              fontsize: 20,
            ),
            TextWidget(
              text: 'hello world',
              color: Colors.red,
              fontweight: FontWeight.w200,
              fontsize: 20,
              onTap: () {},
            ),

            CustomIcons(icons: Icons.abc, color: Colors.green, size: 70.9),
            CustomIcons(icons: Icons.abc, color: Colors.red, onTap: () {}),
            //container for scrren navigation//
            Center(
              child: ContainerWidget(
                height: 120,
                width: 120,
                color: Colors.blue,
                child: Center(child: Text('Home_Screen')),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenTwo(
                        firststring: 'Ahmed',
                        secondstring: 'Shehzad',
                      ),
                    ),
                  );
                },
              ),
            ),
            Image.asset(height: 100, width: 100, 'assets/images/shehzad.jpg'),
          ],
        ),
      ),
    );
  }
}


// container simple button 
// ek icon simple or button k sath 
// text simple or button k sath