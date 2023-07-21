import 'package:flutter/material.dart';

class TitlesWidgets extends StatelessWidget {

  final String title;
  final bool isActive;

  const TitlesWidgets({
    super.key,
    required this.title,
    this.isActive = false,
    });

  @override
  Widget build(BuildContext context) {
    return 
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: isActive?Colors.blueAccent :Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color:isActive?Colors.white : Colors.black54
                ),
              ),
          );         
  }
}