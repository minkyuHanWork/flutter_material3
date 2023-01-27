import 'package:flutter/material.dart';

class IconButtonSet extends StatelessWidget {
  const IconButtonSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            IconToggleButton(
              isEnabled: true,
              tooltip: 'Standard',
            ),
            IconToggleButton(
              isEnabled: false,
              tooltip: 'Standard(disabled)',
            )
          ],
        ),
        Column(
          children: const [
            IconToggleButton(
              isEnabled: true,
              tooltip: 'Filled',
              getDefaultStyle: enabledFilledButtonStyle,
            ),
            IconToggleButton(
              isEnabled: false,
              tooltip: 'Filled(disabled)',
              getDefaultStyle: disabledFilledButtonStyle,
            )
          ],
        ),
        Column(
          children: const [
            IconToggleButton(
              isEnabled: true,
              tooltip: 'FilledTonal',
              getDefaultStyle: enabledFilledTonalButtonStyle,
            ),
            IconToggleButton(
              isEnabled: false,
              tooltip: 'FilledTonal(disabled)',
              getDefaultStyle: disabledFilledTonalButtonStyle,
            )
          ],
        ),
        Column(
          children: const [
            IconToggleButton(
              isEnabled: true,
              tooltip: 'Outlined',
              getDefaultStyle: enabledOutlinedButtonStyle,
            ),
            IconToggleButton(
              isEnabled: false,
              tooltip: 'Outlined(disabled)',
              getDefaultStyle: disabledOutlinedButtonStyle,
            )
          ],
        ),
      ],
    );
  }
}

class IconToggleButton extends StatefulWidget {
  const IconToggleButton(
      {super.key,
      required this.isEnabled,
      this.getDefaultStyle,
      required this.tooltip});

  final bool isEnabled;
  final ButtonStyle? Function(bool, ColorScheme)? getDefaultStyle;
  final String tooltip;

  @override
  State<IconToggleButton> createState() => _IconToggleButtonState();
}

class _IconToggleButtonState extends State<IconToggleButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final VoidCallback? onPressed = widget.isEnabled
        ? () {
            setState(() {
              isSelected = !isSelected;
            });
          }
        : null;
    ButtonStyle? style;
    if (widget.getDefaultStyle != null) {
      style = widget.getDefaultStyle!(isSelected, colors);
    }

    return IconButton(
      tooltip: widget.tooltip,
      onPressed: onPressed,
      isSelected: isSelected,
      icon: const Icon(Icons.settings_outlined),
      selectedIcon: const Icon(Icons.settings),
      style: style,
    );
  }
}

ButtonStyle enabledFilledButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    foregroundColor: selected ? colors.onPrimary : colors.primary,
    backgroundColor: selected ? colors.primary : colors.surfaceVariant,
    hoverColor: selected
        ? colors.onPrimary.withOpacity(0.08)
        : colors.primary.withOpacity(0.08),
    focusColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
    highlightColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
  );
}

ButtonStyle disabledFilledButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
  );
}

ButtonStyle enabledFilledTonalButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    foregroundColor:
        selected ? colors.onSecondaryContainer : colors.onSurfaceVariant,
    backgroundColor:
        selected ? colors.secondaryContainer : colors.surfaceVariant,
    hoverColor: selected
        ? colors.onSecondaryContainer.withOpacity(0.08)
        : colors.onSurfaceVariant.withOpacity(0.08),
    focusColor: selected
        ? colors.onSecondaryContainer.withOpacity(0.12)
        : colors.onSurfaceVariant.withOpacity(0.12),
    highlightColor: selected
        ? colors.onSecondaryContainer.withOpacity(0.12)
        : colors.onSurfaceVariant.withOpacity(0.12),
  );
}

ButtonStyle disabledFilledTonalButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
  );
}

ButtonStyle enabledOutlinedButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    backgroundColor: selected ? colors.inverseSurface : null,
    hoverColor: selected
        ? colors.onInverseSurface.withOpacity(0.08)
        : colors.onSurfaceVariant.withOpacity(0.08),
    focusColor: selected
        ? colors.onInverseSurface.withOpacity(0.12)
        : colors.onSurfaceVariant.withOpacity(0.12),
    highlightColor: selected
        ? colors.onInverseSurface.withOpacity(0.12)
        : colors.onSurface.withOpacity(0.12),
    side: BorderSide(color: colors.outline),
  ).copyWith(
    foregroundColor:
        MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return colors.onInverseSurface;
      }
      if (states.contains(MaterialState.pressed)) {
        return colors.onSurface;
      }
      return null;
    }),
  );
}

ButtonStyle disabledOutlinedButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor:
        selected ? colors.onSurface.withOpacity(0.12) : null,
    side: selected ? null : BorderSide(color: colors.outline.withOpacity(0.12)),
  );
}
