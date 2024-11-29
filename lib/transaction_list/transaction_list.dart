import 'package:dashboard_app/credit_card/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dashboard_app/credit_card/cubit/transaction_cubit.dart';
import 'package:dashboard_app/widgets/sort_by_dropdown/sort_by_filter.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  SortBy _selectedSortBy =
      SortBy.alphabetical; // По умолчанию сортировка по алфавиту

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<TransactionsCubit, List<Transaction>>(
        builder: (context, transactions) {
          if (transactions.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }

          // Применяем сортировку в зависимости от выбранного типа
          if (_selectedSortBy == SortBy.dateAsc) {
            context.read<TransactionsCubit>().sortByDate();
          } else if (_selectedSortBy == SortBy.amount) {
            context.read<TransactionsCubit>().sortByAmount();
          } else if (_selectedSortBy == SortBy.alphabetical) {
            context.read<TransactionsCubit>().sortAlphabetically();
          } else if (_selectedSortBy == SortBy.reverseAlphabetical) {
            context.read<TransactionsCubit>().sortReverseAlphabetically();
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Последние транзакции",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SortByFilter(
                      selectedSortBy: _selectedSortBy,
                      onSortByChanged: (SortBy selectedSortBy) {
                        setState(() {
                          _selectedSortBy = selectedSortBy;
                          // Вызываем соответствующий метод сортировки
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    final transaction = transactions[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.circle, // Заменить на нужную иконку
                          color: Colors.black,
                        ),
                      ),
                      title: Text(transaction.title),
                      subtitle: Text(transaction.date),
                      trailing: Text(
                        '\$${transaction.amount.toStringAsFixed(2)}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
