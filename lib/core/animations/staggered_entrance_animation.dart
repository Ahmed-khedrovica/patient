import 'package:flutter/material.dart';

/// Shared math for staggered list entrance animations (fade + slide).
///
/// Use with a single [AnimationController] (0 → 1) and [AnimatedBuilder].
class StaggeredEntranceAnimation {
  StaggeredEntranceAnimation._();

  /// Fraction of the controller's timeline each item animates across.
  static const double defaultItemSweep = 0.42;

  /// Vertical slide distance in logical pixels.
  static const double defaultSlideY = 22;

  static Interval intervalFor({
    required int index,
    required int count,
    double itemSweep = defaultItemSweep,
    Curve curve = Curves.easeOutCubic,
  }) {
    if (count <= 0) {
      return Interval(0, itemSweep.clamp(0.01, 1.0), curve: curve);
    }
    if (count == 1) {
      return Interval(0, itemSweep.clamp(0.01, 1.0), curve: curve);
    }
    final sweep = itemSweep.clamp(0.01, 1.0);
    final gap = (1.0 - sweep) / (count - 1);
    final start = (index * gap).clamp(0.0, 1.0);
    final end = (start + sweep).clamp(0.0, 1.0);
    return Interval(start, end, curve: curve);
  }

  static Animation<double> fadeAnimation({
    required AnimationController controller,
    required int index,
    required int count,
    double itemSweep = defaultItemSweep,
  }) {
    return Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: intervalFor(index: index, count: count, itemSweep: itemSweep),
      ),
    );
  }
}

/// Staggers [children] with fade-in and upward slide using project timing.
class StaggeredEntrance extends StatefulWidget {
  const StaggeredEntrance({
    super.key,
    required this.children,
    this.controllerDuration = const Duration(milliseconds: 720),
    this.itemSweep = StaggeredEntranceAnimation.defaultItemSweep,
    this.slideY = StaggeredEntranceAnimation.defaultSlideY,
    this.axisAlignment = CrossAxisAlignment.stretch,
  });

  final List<Widget> children;
  final Duration controllerDuration;
  final double itemSweep;
  final double slideY;
  final CrossAxisAlignment axisAlignment;

  @override
  State<StaggeredEntrance> createState() => _StaggeredEntranceState();
}

class _StaggeredEntranceState extends State<StaggeredEntrance>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.controllerDuration,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final n = widget.children.length;
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Column(
          crossAxisAlignment: widget.axisAlignment,
          children: [
            for (var i = 0; i < n; i++)
              _ItemEntrance(
                t: StaggeredEntranceAnimation.intervalFor(
                  index: i,
                  count: n,
                  itemSweep: widget.itemSweep,
                ).transform(_controller.value),
                slideY: widget.slideY,
                child: widget.children[i],
              ),
          ],
        );
      },
    );
  }
}

class _ItemEntrance extends StatelessWidget {
  const _ItemEntrance({
    required this.t,
    required this.slideY,
    required this.child,
  });

  final double t;
  final double slideY;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: t,
      child: Transform.translate(
        offset: Offset(0, slideY * (1 - t)),
        child: child,
      ),
    );
  }
}
