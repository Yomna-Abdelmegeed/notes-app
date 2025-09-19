import 'package:flutter/material.dart';

class CustomNotesCard extends StatelessWidget {
  const CustomNotesCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
    required this.onPressed,
  });

  final String title;
  final String subtitle;
  final String date;
  final Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                date,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ),
            ),
            SizedBox(height: 24)
          ],
        ),
      ),
    );
  }
}
