import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:iconsax/iconsax.dart';
import 'package:financee_app/widgets/custom_app_bar.dart';
import 'package:financee_app/widgets/total_value.dart';
import 'package:financee_app/widgets/deposit.dart';
import 'package:financee_app/widgets/send.dart';
import 'package:financee_app/widgets/earn.dart';
import 'package:financee_app/widgets/swap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: const Color(0xFF1A1A1A),
        systemNavigationBarColor: const Color(0xFF1E1E1E),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: const Color(0xFF1A1A1A),
            body: SafeArea(
              child: Column(
                children: [
                  const CustomAppBar(),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          const TotalValueSection(),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Deposit(),
                              Send(),
                              Earn(),
                              Swap(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}