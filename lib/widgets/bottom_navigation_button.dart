import 'package:flutter/material.dart';

class BottomNavigationButton extends StatelessWidget {
  final String image;
  final String label;
  final Function onTap;
  const BottomNavigationButton({
    super.key,
    required this.image,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          Image.asset(
            image,
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
