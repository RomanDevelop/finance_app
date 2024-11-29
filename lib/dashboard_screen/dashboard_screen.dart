import 'package:dashboard_app/credit_card/presentation/credit_card.dart';
import 'package:dashboard_app/side_panel/side_panel.dart';
import 'package:dashboard_app/ticket_card/ticket_card.dart';
import 'package:dashboard_app/ticket_card/ticket_card_model.dart';
import 'package:dashboard_app/top_panel/top_panel.dart';
import 'package:dashboard_app/transaction_list/transaction_list.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      body: Row(
        children: [
          SidePanel(),
          Expanded(
            child: Column(
              children: [
                TopPanel(),
                // content
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Dashboard",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 260,
                              ),
                              Text(
                                "Upcoming payments",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        // Credit cards and payments
                        Row(
                          children: [
                            CreditCard(),
                            SizedBox(width: 16),
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    TicketCard(
                                      data: TicketCardModel(
                                        id: '1',
                                        titleCard: 'Salary',
                                        subtitleCard: 'Nov 28, 2024',
                                        moneyCard: '+\$134444',
                                        icon: Icons.wallet_giftcard_sharp,
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    TicketCard(
                                      data: TicketCardModel(
                                        id: '2',
                                        titleCard: 'Paypal',
                                        subtitleCard: 'Nov 29, 2024',
                                        moneyCard: '+\$43222',
                                        icon: Icons.payments_sharp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        TransactionList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(String title, String date, String amount) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[200],
        child: const Icon(Icons.shopping_cart, color: Colors.black),
      ),
      title: Text(title),
      subtitle: Text(date),
      trailing: Text(
        amount,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
