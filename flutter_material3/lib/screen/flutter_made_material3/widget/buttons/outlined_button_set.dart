import 'package:flutter/material.dart';

class OutlinedButtonSet extends StatelessWidget {
  const OutlinedButtonSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
        OutlinedButton.icon(
            onPressed: () {}, label: const Text('Icon'), icon: const Icon(Icons.add)),
        const OutlinedButton(onPressed: null, child: Text('Outlined')),
      ],
    );
  }
}
