import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

// create clone of instagram UI

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // add sliver app bar
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                title: Row(
                  children: [
                    Image.asset('assets/images/instagram.png', height: 30),
                    const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border,
                          color: Colors.black),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.message, color: Colors.black),
                    ),
                  ],
                ),
                expandedHeight: Get.height * 0.05,
                flexibleSpace: const SizedBox()),

            SliverToBoxAdapter(
                child: Column(children: [
              // create a story section
              SizedBox(
                height: Get.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: Get.height * 0.1,
                          width: Get.height * 0.1,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pink,
                              width: 4,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/instagram.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text('User $index')
                      ],
                    );
                  },
                ),
              ),
            ])),
            // create a post section
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(children: [
                    ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/instagram.png'),
                        ),
                        title: Text('User $index'),
                        trailing: const Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        )),
                    SizedBox(
                        height: Get.height * 0.5,
                        child: Image.asset('assets/images/instagram.png')),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.message),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.bookmark_border),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Text('Liked by User $index and 100 others'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Text('User $index'),
                          const SizedBox(width: 10),
                          const Text('test caption'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Text('View all 100 comments'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 10,
                            backgroundImage:
                                AssetImage('assets/images/instagram.png'),
                          ),
                          SizedBox(width: 10),
                          Text('Add a comment ...'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Row(children: [
                        Text('1 day ago .'),
                        SizedBox(width: 10),
                        Text('See translation'),
                      ]),
                    )
                  ]);
                },
                childCount: 1000,
              ),
            ),
          ],
        ),

        //  bottomAppBar

        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.zero,
          height: Get.height * 0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black, size: 30),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box_outlined,
                    color: Colors.black, size: 30),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.slow_motion_video_rounded,
                    color: Colors.black, size: 30),
              ),
              IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.person_pin, color: Colors.black, size: 30),
              ),
            ],
          ),
        ));
  }
}
