import 'package:dashboard_app/credit_card/credit_card.dart';
import 'package:dashboard_app/ticket_card/ticket_card.dart';
import 'package:dashboard_app/ticket_card/ticket_card_model.dart';
import 'package:dashboard_app/transaction_list/transaction_list.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: Row(
        children: [
          // Боковая панель
          Container(
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
          ),
          // Основной контент
          Expanded(
            child: Column(
              children: [
                // Верхняя строка
                Container(
                  color: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    children: [
                      // Поисковая строка
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        "EN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Stack(
                        children: [
                          const Icon(Icons.notifications_none, size: 28),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      const Icon(Icons.face),
                    ],
                  ),
                ),
                // Контент
                const Expanded(
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
                        // Карта и предстоящие платежи
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
