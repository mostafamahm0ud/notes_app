import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.bottunTo, this.onTap, this.isLoading = false});
  final String bottunTo;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isLoading
              // ignore: prefer_const_constructors
              ? SizedBox(
                  height: 24,
                  width: 24,
                  child: const CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  bottunTo,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }
}
