import 'package:dashboard_app/dashboard_screen/dashboard_screen.dart';
import 'package:dashboard_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'credit_card/cubit/card_cubit.dart';
import 'credit_card/cubit/transaction_cubit.dart';
import 'credit_card/presentation/macos_dashboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CardCubit()..fetchCard()),
        BlocProvider(create: (_) => TransactionsCubit()..fetchTransactions()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashboardScreen(),
        // home: MacosDashboardPage(),
      ),
    );
  }
}
