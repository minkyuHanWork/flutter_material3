import 'package:flutter/material.dart';

class ElevatedButtonSet extends StatelessWidget {
  const ElevatedButtonSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
        ElevatedButton.icon(
            onPressed: () {}, label: const Text('Icon'), icon: const Icon(Icons.add)),
        const ElevatedButton(onPressed: null, child: Text('Elevated')),
      ],
    );
  }
}
