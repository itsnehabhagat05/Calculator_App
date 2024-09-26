import 'package:calculator/constants/colors.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/widgets/CalculationButton.dart';
import 'package:calculator/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:calculator/screens/widget_buttonlist.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    return Consumer<calprovider>(
      builder: (context,provider,_) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Calculator"),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 212, 100, 141),
          ),
          body: Column(children: [
             CustomTextField(controller: provider.compcontroller,),
            const Spacer(),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.6,
              width: double.infinity,
              padding: padding,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular((31)))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => buttonList[index]),
                ),
                // Second row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => buttonList[index + 4]),
                ),
                // Third row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => buttonList[index + 8]),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children:
                                List.generate(3, (index) => buttonList[index + 12]),
                          ),
                          const SizedBox(
                              height: 10,
                            ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children:
                                List.generate(3, (index) => buttonList[index + 15]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CalculateButton()
                  ],
                )
              ]),
            )
          ]),
        );
      }
    );
  }
}
