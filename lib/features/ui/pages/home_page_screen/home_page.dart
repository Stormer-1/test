import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:test/assets/text_styles.dart';
import 'package:test/features/ui/pages/emotions_page/cubit/emotions_page_cubit.dart';
import 'package:test/features/ui/pages/emotions_page/emotions_page.dart';
import 'package:test/features/ui/pages/home_page_screen/widgets/calendar_page.dart';
import 'package:test/features/ui/pages/home_page_screen/widgets/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        title: BlocSelector<EmotionsPageCubit, EmotionsPageState, DateTime?>(
          selector: (state) {
            return state.selectedDate;
          },
          builder: (context, state) {
            return Text(
              DateFormat("dd MMMM kk:mm").format(state?? DateTime.now()),
              style: AppTextStyles.s18w700,
            );
          },
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            onPressed: () async {
              await showModalBottomSheet<DateTime>(
                  isScrollControlled: true,
                  context: context,
                  builder: (context1) => CalendarPage(
                        onChanged: context.read<EmotionsPageCubit>().setDate,
                      ));
            },
            icon: const Icon(Icons.calendar_month_rounded, size: 24),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 30,
            margin: const EdgeInsets.symmetric(horizontal: 44),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(47),
              color: const Color(0xfff2f2f2),
            ),
            child: MyTabBar(tabController: _tabController),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                const EmotionsPage(),
                ListView(
                  children: const [
                    SizedBox(height: 30),
                    Center(
                      child: Text("Many Thanks!)"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
