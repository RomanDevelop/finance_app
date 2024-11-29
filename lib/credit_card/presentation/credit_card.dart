import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dashboard_app/credit_card/cubit/card_cubit.dart';
import 'package:dashboard_app/credit_card/model/credit_card_model.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardCubit, CreditCardModel?>(
      builder: (context, card) {
        if (card == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return Container(
          height: 220,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 14, 19, 29),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  _CreditCardHeader(cardNumber: card.number),
                  _CreditCardFooter(
                    cardHolderName: card.name,
                    type: card.type,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _CreditCardHeader extends StatelessWidget {
  final String cardNumber;

  const _CreditCardHeader({required this.cardNumber});

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
          Positioned(
            bottom: 22,
            left: 16,
            child: Text(
              cardNumber,
              style: const TextStyle(
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

class _CreditCardFooter extends StatelessWidget {
  final String cardHolderName;
  final String type;

  const _CreditCardFooter({required this.cardHolderName, required this.type});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  type,
                  style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const _CardLogo()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardHolderName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
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
