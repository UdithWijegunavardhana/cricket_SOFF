import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/shrimmer/shrimmer_gradients.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/shrimmer/shrimmer_loading.dart';

class RecordsLoader extends StatefulWidget {
  const RecordsLoader({Key? key}) : super(key: key);

  @override
  State<RecordsLoader> createState() => _RecordsLoaderState();
}

class _RecordsLoaderState extends State<RecordsLoader> {
  @override
  Widget build(BuildContext context) {
    return Shimmer(
      linearGradient: shimmerGradient,
      child: ShimmerLoading(
        isLoading: true,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(color: kPrimaryColor),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30,
                        width: 40,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(color: kPrimaryColor),
                      ),
                      Container(
                        height: 20,
                        width: 80,
                        decoration: BoxDecoration(color: kPrimaryColor),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                ),
              ],
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            )
          ],
        ),
      ),
    );
  }
}
