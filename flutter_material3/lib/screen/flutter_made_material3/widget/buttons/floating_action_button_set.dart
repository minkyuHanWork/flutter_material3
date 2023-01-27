import 'package:flutter/material.dart';

class FloatingActionButtonSet extends StatelessWidget {
  const FloatingActionButtonSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton.small(
          onPressed: () {},
          tooltip: 'small',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {},
          tooltip: 'standard',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton.large(
          onPressed: () {},
          tooltip: 'larget',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton.extended(
          onPressed: () {},
          tooltip: 'extended',
          label: Row(
            children: const [Icon(Icons.add), Text('Create')],
          ),
        ),
      ],
    );
  }
}
