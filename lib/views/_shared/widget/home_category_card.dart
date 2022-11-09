import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/home_item_tile.dart';

import '../../../routes/app_router.gr.dart';
import '../constants/colors.dart';
import '../constants/font_styles.dart';

class HomeCategoryCard extends StatefulWidget {
  final String title;
  final int titleCardCount;
  final List<dynamic> titleCardItems;

  const HomeCategoryCard(
      {Key? key,
      required this.title,
      required this.titleCardCount,
      required this.titleCardItems})
      : super(key: key);

  @override
  State<HomeCategoryCard> createState() => _HomeCategoryCardState();
}

class _HomeCategoryCardState extends State<HomeCategoryCard> {
  late DateTime? selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      color: kLayoutLightColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    widget.title,
                    style: kFontHomeScreenCategoryTitle,
                  )),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () async {
                        final DateTime? dateTime = await showDatePicker(
                            context: context,
                            initialDate: selectedDate!,
                            firstDate: DateTime.now(),
                            lastDate: DateTime(DateTime.now().year + 2),
                            builder: (context, child) {
                              return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: kPrimaryColor,
                                      onPrimary: kLayoutLightColor,
                                      onSurface: kPrimaryColor,
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                          foregroundColor: kPrimaryColor),
                                    ),
                                  ),
                                  child: child!);
                            });

                        if (dateTime != null) {
                          setState(() {
                            selectedDate = dateTime;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.calendar_month,
                        color: kPrimaryColor,
                        size: 30,
                      )),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        const Text('Selected Date : '),
                        selectedDate != null
                            ? Text(
                                '${selectedDate?.year} - ${selectedDate?.month} - ${selectedDate?.day}',
                                style: const TextStyle(fontWeight: FontWeight.w500),
                              )
                            : const Text(''),
                      ],
                    ),
                  )
                ],
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
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.titleCardCount,
            itemBuilder: (context, index) {
              return HomeItemTile(
                title: widget.titleCardItems[index].name!,
                subTitle: widget.titleCardItems[index].description!,
                onTap: () {
                  AutoRouter.of(context).push(BookingRoute(
                      resourceId: widget.titleCardItems[index].id!,
                      selectedDate: selectedDate!
                  ));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
