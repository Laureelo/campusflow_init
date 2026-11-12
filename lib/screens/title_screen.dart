import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final today = DateFormat('EEEE d MMMM y').format(DateTime.now());

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 96,
                semanticLabel: 'CampusFlow logo',
              ),
              const SizedBox(height: 16),
              Text('CampusFlow', style: textTheme.headlineMedium),
              const SizedBox(height: 8),
              Text(
                'Track your academic deadlines',
                style: textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(today, style: textTheme.bodyMedium),
            ],
          ),
        ),
      ),
    );
  }
}
