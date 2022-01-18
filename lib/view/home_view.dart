import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_calulator/controller/home_controller.dart';
import 'package:simple_calulator/widgets/build_button.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Obx(() =>  Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(controller.equation.value, style:TextStyle(fontSize: controller.equationFontSize.value),),
          )),

         Obx(() => Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(controller.result.value, style: TextStyle(fontSize: controller.resultFontSize.value),),
          )),

         const Expanded(child: Divider()),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children:  [
                    TableRow(
                      children:[
                       BuildButton(buttonText: "C", buttonHeight: 1, buttonColor: Colors.blue),
                       BuildButton(buttonText: "⌫", buttonHeight: 1, buttonColor: const Color(0xffF28B31)),
                       BuildButton(buttonText: "÷", buttonHeight: 1, buttonColor: const Color(0xffF28B31)),
                      ]
                    ),

                    TableRow(
                        children:[
                          BuildButton(buttonText: "7", buttonHeight: 1, buttonColor: Colors.black54),
                          BuildButton(buttonText: "8", buttonHeight: 1, buttonColor: Colors.black54),
                          BuildButton(buttonText: "9", buttonHeight: 1, buttonColor: Colors.black54),
                        ]
                    ),

                    TableRow(
                        children:[
                          BuildButton(buttonText: "4", buttonHeight: 1, buttonColor: Colors.black54),
                          BuildButton(buttonText: "5", buttonHeight: 1, buttonColor: Colors.black54),
                          BuildButton(buttonText: "6", buttonHeight: 1, buttonColor: Colors.black54),
                        ]
                    ),

                    TableRow(
                        children:[
                          BuildButton(buttonText: "1", buttonHeight: 1, buttonColor: Colors.black54),
                          BuildButton(buttonText: "2", buttonHeight: 1, buttonColor: Colors.black54),
                          BuildButton(buttonText: "3", buttonHeight: 1, buttonColor: Colors.black54),
                        ]
                    ),
                    TableRow(
                        children:[
                          BuildButton(buttonText: ".", buttonHeight: 1, buttonColor: Colors.black54),
                          BuildButton(buttonText: "0", buttonHeight: 1, buttonColor: Colors.black54),
                          BuildButton(buttonText: "00", buttonHeight: 1, buttonColor: Colors.black54),
                        ]
                    ),
                  ],
                ),

              ),

              SizedBox(
                width: MediaQuery.of(context).size.width  * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children:[ BuildButton(buttonText: '×', buttonHeight: 1, buttonColor: const Color(0xffF28B31)),
                    ]),

                    TableRow(
                        children:[ BuildButton(buttonText: '-', buttonHeight: 1, buttonColor: const Color(0xffF28B31)),
                        ]),

                    TableRow(
                        children:[ BuildButton(buttonText: '+', buttonHeight: 1, buttonColor: const Color(0xffF28B31)),
                        ]),

                    TableRow(
                        children:[ BuildButton(buttonText: '=', buttonHeight: 2, buttonColor: Colors.blue),
                        ]),

                  ],
                ),
              )

            ],
          )

        ],
      ),
    );
  }
}
