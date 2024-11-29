import 'package:flutter/material.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      color: Colors.white,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Pay",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              Icon(Icons.home, size: 30, color: Colors.black),
              SizedBox(height: 20),
              Icon(Icons.credit_card, size: 30, color: Colors.grey),
              SizedBox(height: 20),
              Icon(Icons.notifications, size: 30, color: Colors.grey),
              SizedBox(height: 20),
              Icon(Icons.settings, size: 30, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}
