import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.bottunTo, this.onTap});
  final String bottunTo;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            bottunTo,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
