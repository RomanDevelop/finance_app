import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dashboard_app/credit_card/model/credit_card_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CardCubit extends Cubit<CreditCardModel?> {
  CardCubit() : super(null);

  void fetchCard() async {
    try {
      final querySnapshot =
          await FirebaseFirestore.instance.collection('cards').limit(1).get();

      if (querySnapshot.docs.isNotEmpty) {
        final cardData = querySnapshot.docs.first.data();
        emit(CreditCardModel.fromMap(cardData));
      } else {
        print('No cards found in the collection.');
        emit(null);
      }
    } catch (e) {
      print('Error fetching card: $e');
      emit(null);
    }
  }
}
