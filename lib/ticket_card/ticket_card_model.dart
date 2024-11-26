import 'package:flutter/material.dart';

class TicketCardModel {
  const TicketCardModel({
    required this.id,
    required this.titleCard,
    required this.subtitleCard,
    required this.moneyCard,
    required this.icon,
  });

  final String id;
  final String titleCard;
  final String subtitleCard;
  final String moneyCard;
  final IconData icon;
}
