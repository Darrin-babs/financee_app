import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Send extends StatelessWidget {
  const Send({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            color: const Color(0xFF2A2A2A),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white.withOpacity(0.1)),
          ),
          child: const Icon(
            Iconsax.send,
            color: Colors.white,
            size: 28,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Send',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}