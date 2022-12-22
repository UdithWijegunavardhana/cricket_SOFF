import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/shrimmer/shrimmer_gradients.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/shrimmer/shrimmer_loading.dart';

import '../constants/colors.dart';

class HomeCardLoader extends StatefulWidget {
  const HomeCardLoader({Key? key}) : super(key: key);

  @override
  State<HomeCardLoader> createState() => _HomeCardLoaderState();
}

class _HomeCardLoaderState extends State<HomeCardLoader> {
  @override
  Widget build(BuildContext context) {
    return Shimmer(
      linearGradient: shimmerGradient,
      child: ShimmerLoading(
        isLoading: true,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 20),
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(color: kPrimaryColor),
                  ),
                ],
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 10),
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'aa',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'aaa',
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
