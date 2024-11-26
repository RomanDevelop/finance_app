import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 14, 19, 29),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              _CreditCardHeader(),
              _CreditCardFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CreditCardHeader extends StatelessWidget {
  const _CreditCardHeader();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: Image.asset(
              "assets/credit-card.png",
              height: 40,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 10,
            left: 70,
            child: Image.asset(
              "assets/wifi.png",
              height: 50,
              color: Colors.white,
            ),
          ),
          const Positioned(
            bottom: 22,
            left: 16,
            child: Text(
              "2424 4444 3333 1990",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CardLogo extends StatelessWidget {
  const _CardLogo();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Colors.red.withOpacity(0.8),
        ),
        Transform.translate(
          offset: const Offset(-10, 0),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.orange.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}

class _CreditCardFooter extends StatelessWidget {
  const _CreditCardFooter();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Debit',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                _CardLogo()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Antonio Segmundo',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Master Card',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
