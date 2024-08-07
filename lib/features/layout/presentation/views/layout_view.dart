import 'package:flutter/material.dart';
import 'package:movie_zone/features/layout/presentation/views/widgets/layout_view_body.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({
    super.key,
  });
  static const routeName = '/layout_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutViewBody(),
    );
  }
}
