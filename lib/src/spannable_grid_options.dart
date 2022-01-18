
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpannableGridEditingStrategy {
  const SpannableGridEditingStrategy({
    this.allowed = true,
    this.enterOnLongTap = true,
    this.exitOnTap = true,
    this.immediate = false,
    this.moveOnlyToNearby = false,
  });

  factory SpannableGridEditingStrategy.disabled() => const SpannableGridEditingStrategy(
    allowed: false,
    enterOnLongTap: false,
    exitOnTap: false,
    immediate: false,
  );

  factory SpannableGridEditingStrategy.immediate() => const SpannableGridEditingStrategy(
    allowed: true,
    enterOnLongTap: false,
    exitOnTap: false,
    immediate: true,
  );

  final bool allowed;

  final bool enterOnLongTap;

  final bool exitOnTap;

  final bool immediate;

  final bool moveOnlyToNearby;

  SpannableGridEditingStrategy copyWith({
    bool? allowed,
    bool? enterOnLongTap,
    bool? exitOnTap,
    bool? immediate,
    bool? moveOnlyToNearby,
  }) {
    return SpannableGridEditingStrategy(
      allowed: allowed ?? this.allowed,
      enterOnLongTap: enterOnLongTap ?? this.enterOnLongTap,
      exitOnTap: exitOnTap ?? this.exitOnTap,
      immediate: immediate ?? this.immediate,
      moveOnlyToNearby: moveOnlyToNearby ?? this.moveOnlyToNearby,
    );
  }
}

class SpannableGridStyle {
  const SpannableGridStyle({
    this.backgroundColor = Colors.black12,
    this.contentOpacity = 0.5,
    this.selectedCellDecoration,
    this.spacing = 2.0,
  });

  /// A color of empty cells.
  ///
  /// It is used to display empty cells, when the [emptyCellView] is not specified.
  ///
  /// Defaults to [Colors.black12].
  ///
  final Color backgroundColor;

  final double contentOpacity;

  final Decoration? selectedCellDecoration;

  /// Space between cells.
  ///
  final double spacing;

}

enum SpannableGridSize {
  parent,
  parentWidth,
  parentHeight,
}

