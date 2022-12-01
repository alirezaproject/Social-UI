import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_ui/widgets/following_users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'FRENZY',
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 10),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 2,
        bottom: TabBar(
            controller: _tabController,
            indicatorWeight: 3,
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelStyle: const TextStyle(fontSize: 18),
            labelStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            tabs: const [
              Tab(
                text: 'Trending',
              ),
              Tab(
                text: 'Latest',
              )
            ]),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          FollowingUsers(),
        ],
      ),
    );
  }
}
