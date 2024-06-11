
import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widgeet.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurveEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: TCricularContainer(
                  backgroundColor: TColors.textwhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: TCricularContainer(
                  backgroundColor: TColors.textwhite.withOpacity(0.1),
                )),
            child,
          ],
        ),
      ),
    );
  }
}
