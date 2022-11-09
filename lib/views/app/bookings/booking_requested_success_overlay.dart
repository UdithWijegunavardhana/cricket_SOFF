import 'package:flutter/material.dart';

import '../../_shared/constants/colors.dart';
import '../../_shared/constants/font_styles.dart';
import '../../_shared/widget/custom_elevated_button.dart';

class BookingRequestedSuccessOverlay extends ModalRoute<void> {
  @override
  Duration get transitionDuration => Duration(milliseconds: 100);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String get barrierLabel => 'Barier';

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    return SafeArea(
      child: Material(
        type: MaterialType.canvas,
        child: SafeArea(
          child: _buildOverlayContent(context),
        ),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
          Icon(Icons.done_outline, color: kPrimaryColor, size: 50),
          const SizedBox(height: 40,),
          Text(
            'Booking Requested Successfully',
            style: kModalTitle,
          ),
          const Spacer(),
          CustomElevatedButton(
              width: 120,
              height: 50,
              buttonText: 'Close',
              onPressed: () {
                Navigator.pop(context);
              },
              color: kPrimaryColor)
        ],
      ),
    );
  }

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );

  }
  
}