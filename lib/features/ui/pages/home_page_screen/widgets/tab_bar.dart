import 'package:flutter/material.dart';
import 'package:test/assets/text_styles.dart';
import 'package:test/features/ui/pages/home_page_screen/widgets/tab_items.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      labelStyle: AppTextStyles.s12w500,
      unselectedLabelStyle: AppTextStyles.s12w500.apply(
        color: const Color(0xffFFFFFF),
      ),
      indicatorPadding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      controller: tabController,
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(47),
        color: const Color(0xffFF8702),
      ),
      labelColor: const Color(0xffffffff),
      unselectedLabelColor: const Color(0xffBCBCBF),
      tabs: [
        TabItems(
          title: "Дневник настроение",
          image: "assets/images/bk.svg",
          color: tabController.index == 0
              ? const Color(0xffffffff)
              : const Color(0xffBCBCBF),
        ),
        TabItems(
            title: "Статистика",
            image: "assets/images/Icons.svg",
            color: tabController.index == 1
                ? const Color(0xffffffff)
                : const Color(0xffBCBCBF)),
      ],
    );
  }
}