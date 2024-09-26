import 'dart:convert';

import 'package:calculator/constants/colors.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<calprovider>(context,listen:  false).setValue("="),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 212, 100, 141),
          borderRadius: BorderRadius.circular(40),
          
        ),
        child: Center(child: Text("=",style: TextStyle(fontSize: 32,color: Colors.white),)),
    
      ),
    );
  }
}
