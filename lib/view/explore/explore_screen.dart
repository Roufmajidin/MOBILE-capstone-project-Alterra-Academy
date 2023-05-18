import 'package:flutter/material.dart';
import 'package:gofit_apps/model/gym.dart';
import 'package:gofit_apps/themes/color_style.dart';
import 'package:gofit_apps/view/explore/widgets/gym_card.dart';
import 'package:gofit_apps/view/explore/widgets/time_category.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.bgScreen,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
            decoration: BoxDecoration(
              color: ColorsTheme.bgScreen,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const TopBar(),
                Divider(
                  color: ColorsTheme.divider,
                ),
                const SearchSection(),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.calendar_month_rounded,
                          color: Colors.black,
                          size: 20,
                        ),
                        const SizedBox(width: 19),
                        Text(
                          'Sunday, 30 April 2023',
                          style: ThemeText.headingCalendar,
                        ),
                      ],
                    ),
                    const SizedBox(height: 23),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: ColorsTheme.bgScreen,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 12,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                DatePicker(
                                  date: 'Sun',
                                  time: '30',
                                  isSelected: true,
                                ),
                                DatePicker(
                                  date: 'Mon',
                                  time: '1',
                                ),
                                DatePicker(
                                  date: 'Tue',
                                  time: '2',
                                ),
                                DatePicker(
                                  date: 'Wed',
                                  time: '3',
                                ),
                                DatePicker(
                                  date: 'Thu',
                                  time: '4',
                                ),
                                DatePicker(
                                  date: 'Fri',
                                  time: '5',
                                ),
                                DatePicker(
                                  date: 'Sat',
                                  time: '6',
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Divider(
                              color: ColorsTheme.divider,
                            ),
                            const SizedBox(height: 12),
                            GestureDetector(
                              onTap: () {
                                // add your logic here
                              },
                              child: Text(
                                'Tampilkan lebih banyak',
                                style: ThemeText.heading3.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 26),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TimeCategory(
                          icon: 'assets/icons/cloud.png',
                          time: 'Pagi',
                          clock: '5AM - 12PM',
                          isSelected: true,
                        ),
                        TimeCategory(
                          icon: 'assets/icons/sun.png',
                          time: 'Siang',
                          clock: '12PM - 5PM',
                        ),
                        TimeCategory(
                          icon: 'assets/icons/moon.png',
                          time: 'Malam',
                          clock: '5PM - 11PM',
                        )
                      ],
                    ),
                    GymCardList(gymData: gymData),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DatePicker extends StatelessWidget {
  const DatePicker({
    Key? key,
    required this.date,
    required this.time,
    this.isSelected = false,
  });

  final String date;
  final String time;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          date,
          style: ThemeText.labelDay,
        ),
        const SizedBox(height: 16),
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? ColorsTheme.orangelight : ColorsTheme.bgScreen,
          ),
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              time,
              style: ThemeText.labelTime,
            ),
          ),
        ),
      ],
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 131,
      child: Column(
        children: <Widget>[
          Container(
            height: 54,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: ColorsTheme.searchbox,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Your Location',
                  style: ThemeText.headingSearchSmall,
                ),
                const SizedBox(height: 9),
                Text(
                  'Jl. Setia Budi No.210',
                  style: ThemeText.headingLocation,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 44,
            width: double.infinity,
            padding:
                const EdgeInsets.only(left: 2, right: 2, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: ColorsTheme.searchbox,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              style: ThemeText.headingSearchBlack,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 18,
                ),
                hintText: 'Search gym or virtual training',
                hintStyle: ThemeText.headingSearchBig,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 18,
          ),
          const SizedBox(width: 24),
          Text(
            'Explore Class',
            style: ThemeText.heading1,
          ),
        ],
      ),
    );
  }
}