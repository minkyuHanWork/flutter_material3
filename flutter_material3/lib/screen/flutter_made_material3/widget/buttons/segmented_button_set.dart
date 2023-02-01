import 'package:flutter/material.dart';

class SegmentedButtonSet extends StatelessWidget {
  const SegmentedButtonSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SingleChoicSegmentButton(),
        SizedBox(height: 10),
        MultipleChoiceSegmentButton(),
      ],
    );
  }
}

class SingleChoicSegmentButton extends StatefulWidget {
  const SingleChoicSegmentButton({super.key});

  @override
  State<SingleChoicSegmentButton> createState() =>
      _SingleChoicSegmentButtonState();
}

enum Calendar { day, week, month, year }

class _SingleChoicSegmentButtonState extends State<SingleChoicSegmentButton> {
  Calendar calendarView = Calendar.day;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      showSelectedIcon: true,
      selectedIcon: const Icon(Icons.check_circle),
      segments: const [
        ButtonSegment<Calendar>(
          value: Calendar.day,
          label: Text('Day'),
          icon: Icon(Icons.calendar_view_day),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.week,
          label: Text('Week'),
          icon: Icon(Icons.calendar_view_week),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.month,
          label: Text('Month'),
          icon: Icon(Icons.calendar_view_month),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.year,
          label: Text('Year'),
          icon: Icon(Icons.calendar_today),
        ),
      ],
      selected: {calendarView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        setState(() {
          calendarView = newSelection.first;
        });
      },
    );
  }
}

class MultipleChoiceSegmentButton extends StatefulWidget {
  const MultipleChoiceSegmentButton({super.key});

  @override
  State<MultipleChoiceSegmentButton> createState() =>
      _MultipleChoiceSegmentButtonState();
}

enum Sizes { extraSmall, small, medium, large, extraLarge }

class _MultipleChoiceSegmentButtonState
    extends State<MultipleChoiceSegmentButton> {
  Set<Sizes> selection = <Sizes>{Sizes.large};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(value: Sizes.extraSmall, label: Text('XS')),
        ButtonSegment<Sizes>(value: Sizes.small, label: Text('S')),
        ButtonSegment<Sizes>(value: Sizes.medium, label: Text('M')),
        ButtonSegment<Sizes>(
          value: Sizes.large,
          label: Text('L'),
        ),
        ButtonSegment<Sizes>(value: Sizes.extraLarge, label: Text('XL')),
      ],
      selected: selection,
      onSelectionChanged: (Set<Sizes> newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true,
    );
  }
}
