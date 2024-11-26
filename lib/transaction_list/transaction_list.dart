import 'package:dashboard_app/widgets/sort_by_dropdown/sort_by_filter.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  SortBy _selectedSortBy =
      SortBy.alphabetical; // Default sort option for sorting

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Align items to both ends
              children: [
                const Text(
                  "Recent Transactions",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SortByFilter(
                  selectedSortBy:
                      _selectedSortBy, // Pass the selected sort option
                  onSortByChanged: (SortBy selectedSortBy) {
                    setState(() {
                      _selectedSortBy =
                          selectedSortBy; // Update the sort option
                    });
                  },
                ),
              ],
            ),
          ),
          const ListTile(
            title: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Разделение на два края
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 239, 243, 245),
                      child: Icon(
                        Icons.account_balance,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(width: 10), // Отступ между иконкой и текстом
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bank of America"),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'yyyy-MM-dd', // Дата
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 85,
                    ),
                    Text(
                      "+\$1,328.00",
                      style: TextStyle(color: Colors.teal),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.more_vert) // Отступ между суммой и датой
                  ],
                ),
              ],
            ),
          ),
          const ListTile(
            title: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Разделение на два края
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 239, 243, 245),
                      child: Icon(
                        Icons.send,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(width: 10), // Отступ между иконкой и текстом
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("To Brody Armando"),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'yyyy-MM-dd', // Дата
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 85,
                    ),
                    Text(
                      "+\$1,328.00",
                      style: TextStyle(color: Colors.teal),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.more_vert) // Отступ между суммой и датой
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          const ListTile(
            title: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Разделение на два края
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 239, 243, 245),
                      child: Icon(
                        Icons.fitness_center,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(width: 10), // Отступ между иконкой и текстом
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("To buy"),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'yyyy-MM-dd', // Дата
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 85,
                    ),
                    Text(
                      "+\$1,328.00",
                      style: TextStyle(color: Colors.teal),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.more_vert) // Отступ между суммой и датой
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
