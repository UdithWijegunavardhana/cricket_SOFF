import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/shrimmer/shrimmer_gradients.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/shrimmer/shrimmer_loading.dart';

class EventPageLoader extends StatefulWidget {
  const EventPageLoader({Key? key}) : super(key: key);

  @override
  State<EventPageLoader> createState() => _EventPageLoaderState();
}

class _EventPageLoaderState extends State<EventPageLoader> with SingleTickerProviderStateMixin  {

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Shimmer(
      linearGradient: shimmerGradient,
      child: ShimmerLoading(
        isLoading: true,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 5, 10),
                  width: 200,
                  height: 35,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 5, 20),
                  padding: const EdgeInsets.fromLTRB(10, 20, 5, 10),
                  width: 100,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                  ),
                ),
              ],
            ),
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
            )
          ],
        ),
      ),
    );
  }
}
