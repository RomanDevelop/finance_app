import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dashboard_app/credit_card/model/transaction.dart' as local;

class TransactionsCubit extends Cubit<List<local.Transaction>> {
  TransactionsCubit() : super([]);

  // Метод для получения транзакций из Firebase
  void fetchTransactions() async {
    try {
      final querySnapshot =
          await FirebaseFirestore.instance.collection('transactions').get();
      final transactions = querySnapshot.docs
          .map((doc) =>
              local.Transaction.fromMap(doc.data() as Map<String, dynamic>))
          .toList();
      emit(transactions);
    } catch (e) {
      print('Ошибка при получении транзакций: $e');
      emit([]);
    }
  }

  // Сортировка по сумме
  void sortByAmount() {
    if (state.isNotEmpty) {
      final sorted = List<local.Transaction>.from(state)
        ..sort((a, b) => a.amount.compareTo(b.amount));
      emit(sorted);
    }
  }

  // Сортировка по дате
  void sortByDate() {
    if (state.isNotEmpty) {
      final sorted = List<local.Transaction>.from(state)
        ..sort((a, b) => a.date.compareTo(b.date));
      emit(sorted);
    }
  }

  // Сортировка по алфавиту
  void sortAlphabetically() {
    if (state.isNotEmpty) {
      final sorted = List<local.Transaction>.from(state)
        ..sort((a, b) => a.title.compareTo(b.title));
      emit(sorted);
    }
  }

  // Сортировка по убыванию алфавита
  void sortReverseAlphabetically() {
    if (state.isNotEmpty) {
      final sorted = List<local.Transaction>.from(state)
        ..sort((a, b) => b.title.compareTo(a.title));
      emit(sorted);
    }
  }
}
