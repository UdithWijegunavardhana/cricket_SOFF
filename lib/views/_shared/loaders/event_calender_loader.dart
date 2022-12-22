import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/shrimmer/shrimmer_gradients.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/shrimmer/shrimmer_loading.dart';

import '../constants/colors.dart';

class EventCalenderLoader extends StatefulWidget {
  const EventCalenderLoader({Key? key}) : super(key: key);

  @override
  State<EventCalenderLoader> createState() => _EventCalenderLoaderState();
}

class _EventCalenderLoaderState extends State<EventCalenderLoader> {
  @override
  Widget build(BuildContext context) {

    Size _size = MediaQuery.of(context).size;

    return Shimmer(
      linearGradient: shimmerGradient,
      child: ShimmerLoading(
        isLoading: true,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: _size.width * 0.1,
                    margin: EdgeInsets.only(left: _size.width * 0.01,right: _size.width * 0.01),
                    color: kPrimaryColor,
                  ),
                  Container(
                    width: _size.width * 0.87,
                    margin: EdgeInsets.only(right: _size.width * 0.01),
                    color: kPrimaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
