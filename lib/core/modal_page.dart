import 'package:flutter/material.dart';

class ModalPage extends PageRoute {
  ModalPage({
    required WidgetBuilder builder,
    RouteSettings? settings,
    this.fullscreenDialog = false,
  })  : _builder = builder,
        super(settings: settings, fullscreenDialog: fullscreenDialog);

  final bool fullscreenDialog;
  late final WidgetBuilder _builder;

  @override
  Color? get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String? get barrierLabel => 'Modal Page';

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 300);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [_builder(context)],
          ),
        ],
      ),
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: Tween<double>(
          begin: 0.95,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ),
        ),
        child: child,
      ),
    );
  }
}
