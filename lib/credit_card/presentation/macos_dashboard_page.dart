// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:dashboard_app/credit_card/cubit/card_cubit.dart';
// import 'package:dashboard_app/credit_card/cubit/transaction_cubit.dart';
// import 'package:dashboard_app/credit_card/model/credit_card_model.dart';
// import 'package:dashboard_app/credit_card/model/transaction.dart' as local;

// class MacosDashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//       ),
//       body: Column(
//         children: [
//           BlocBuilder<CardCubit, CreditCardModel?>(
//             builder: (context, card) {
//               if (card == null) {
//                 return Center(child: CircularProgressIndicator());
//               }
//               return Text(card.name);
//             },
//           ),
//           BlocBuilder<TransactionsCubit, List<local.Transaction>>(
//             builder: (context, transactions) {
//               if (transactions.isEmpty) {
//                 return Center(child: CircularProgressIndicator());
//               }
//               return Expanded(
//                 child: ListView.builder(
//                   itemCount: transactions.length,
//                   itemBuilder: (context, index) {
//                     final transaction = transactions[index];
//                     return ListTile(
//                       leading:
//                           Icon(Icons.circle), // заменить иконкой, если нужно
//                       title: Text(transaction.title),
//                       subtitle: Text(transaction.date),
//                       trailing:
//                           Text('\$${transaction.amount.toStringAsFixed(2)}'),
//                     );
//                   },
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
