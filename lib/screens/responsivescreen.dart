import 'package:first_week/custom_widgets/container/custom_container.dart';
import 'package:first_week/custom_widgets/text/Custom_Text.dart';
import 'package:flutter/material.dart';

class Responsivescreen extends StatelessWidget {
  const Responsivescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(backgroundColor: Colors.amberAccent),
      body: Column(
        children: [
          // static
          ContainerWidget(height: 100, width: 100, color: Colors.red),

          // responsive container
          ContainerWidget(
            height: MediaQuery.sizeOf(context).height * .2,
            width: MediaQuery.sizeOf(context).width * .4,
            color: Colors.black,
          ),

          Row(
            children: [
              Expanded(child: ContainerWidget(height: 200, color: Colors.blue)),
              Expanded(child: ContainerWidget(height: 200, color: Colors.red)),
              Expanded(child: ContainerWidget(height: 200, color: Colors.blue)),
              Expanded(child: ContainerWidget(height: 200, color: Colors.red)),
            ],
          ),
        ],
      ),
    );
  }
}
