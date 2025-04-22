// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';
import '../../widgets/story_list_item.dart';
import '../notification/notification_view.dart';
import '../../controllers/main_controller.dart';
import '../explore/explore_view.dart';
import '../profile/profile_view.dart';
import '../library/library_view.dart';
import '../create_blog/create_blog_view.dart';

class HomeView extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());
  final MainController _mainController = Get.put(MainController());

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Get.to(() => NotificationView());
            },
          ),
        ],
      ),
      body: Obx(() => _mainController.currentIndex.value == 0
          ? Column(
              children: [
                // Category bar
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TextButton(onPressed: () {
                        // Filter content for "For you" category
                        _homeController.changeCategory('For you'); 
                      }, child: Text('For you')),
                      TextButton(onPressed: () {
                        _homeController.filterFollowing();
                      }, child: Text('Following')),
                      TextButton(onPressed: () {
                        _homeController.changeCategory('Featured');
                      }, child: Text('Featured')),
                      TextButton(onPressed: () {
                        print('Filtering content for "New"'); // Placeholder
                      }, child: Text('New')),
                      TextButton(onPressed: () {
                        print('Filtering content for "Flutter"'); // Placeholder
                      }, child: Text('Flutter')),
                      TextButton(onPressed: () {
                        _homeController.filterByText('iOS');
                      }, child: Text('iOS')),
                      TextButton(onPressed: () {
                        print('Filtering content for "Design"'); // Placeholder
                      }, child: Text('Design')),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _homeController.stories.length,
                    itemBuilder: (context, index) {
                      return StoryCard(
                        title: _homeController.stories[index].title,
                        subtitle: 'This is a subtitle',
                        imageUrl: 'https://picsum.photos/200/300',
                        authorName: 'John Doe',
                        authorAvatarUrl: 'https://picsum.photos/50/50',
                        date: '1 day ago',
                        applauseCount: 100,
                        commentCount: 50,
                        dislikeCount: 10,
                      );
                    },
                  ),
                ),
              ],
            )
          : _mainController.currentIndex.value == 1
              ? ExploreView()
              : _mainController.currentIndex.value == 2
                  ? LibraryView()
                  : _mainController.currentIndex.value == 3
                      ? ProfileView()
                      : CreateBlogView()),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: Colors.blue,
            currentIndex: _mainController.currentIndex.value,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white54,
            onTap: _mainController.changePage,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore, color: Colors.white),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books, color: Colors.white),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white),
                label: 'Profile',
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => CreateBlogView());
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
