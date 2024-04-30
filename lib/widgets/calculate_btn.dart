import 'dart:ui';
import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

class CalculateBtn extends StatelessWidget {
  const CalculateBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context,listen:false).setValue('='),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(40)),
        child: Center(child: Text('=', style: TextStyle(fontSize: 32),),),
      ),
    );
  }
}
