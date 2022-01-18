import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_calulator/controller/home_controller.dart';


class BuildButton extends StatelessWidget {
 final String buttonText;
 final double buttonHeight;
 final Color buttonColor;

  BuildButton({Key? key,
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonColor
  }) : super(key: key);

 final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: TextButton(onPressed: () {
        controller.buttonPressed(buttonText);
      },
      child: Text(buttonText, style: const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.normal,
        color: Colors.white
      ),
      ),
      ),
    );
  }

}
