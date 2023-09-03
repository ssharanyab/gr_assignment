import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../models/latest_shows.dart';
import '../models/trending_clips.dart';
import '../widgets/bottom_navigation_button.dart';
import '../widgets/title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Dummy Data
  List<LatestShows> latestShows = [
    LatestShows(
      image: 'assets/logo/image_1.png',
      name: 'Pubg  mobile india.',
      views: '95.1k Views',
    ),
    LatestShows(
      image: 'assets/logo/image_2.png',
      name: 'Lan Event',
      views: '95.1k Views',
    ),
    LatestShows(
      image: 'assets/logo/image_1.png',
      name: 'Taiwan Tour',
      views: '95.1k Views',
    ),
  ];
  List<TrendingClips> trendingClips = [
    TrendingClips(
      image: 'assets/logo/timage_1.png',
      channelImage: 'assets/Gods_Ember 1.png',
      name: 'Gods Ember',
      views: '95.1k Views',
    ),
    TrendingClips(
      image: 'assets/logo/t_image2.png',
      channelImage: 'assets/Gods_Ember 1.png',
      name: 'Gods Ember',
      views: '95.1k Views',
    ),
    TrendingClips(
      image: 'assets/logo/timage_1.png',
      channelImage: 'assets/Gods_Ember 1.png',
      name: 'Gods Ember',
      views: '95.1k Views',
    ),
  ];

  int carousalCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF080811),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage('assets/icons/menu_icon.png'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/icons/video_icon.png'),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/icons/search.png'),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/icons/bell_icon.png'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Color(0xFF161621), // Start color (#161621)
                Color(0xFF080811),
                // End color (#080811)
              ],
            ),
          ),
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ShaderMask(
                            shaderCallback: (rect) {
                              return const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black,
                                  Colors.transparent,
                                ],
                              ).createShader(
                                  Rect.fromLTRB(0, 0, rect.width, rect.height));
                            },
                            blendMode: BlendMode.dstIn,
                            child: Image.asset(
                              'assets/home_main.png',
                              height: 500,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: InkWell(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(255, 255, 255, 0),
                                      Color.fromRGBO(255, 255, 255, 0.07),
                                      Color.fromRGBO(255, 255, 255, 0.22),
                                      Color.fromRGBO(255, 255, 255, 0.44),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.play_arrow_rounded,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'PLAY',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Taiwan Excellence Gaming Cup 2022',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Pokémon | Gods Reign',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ShaderMask(
                            shaderCallback: (rect) {
                              return const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black,
                                  Colors.transparent,
                                ],
                              ).createShader(
                                  Rect.fromLTRB(0, 0, rect.width, rect.height));
                            },
                            blendMode: BlendMode.dstIn,
                            child: Image.asset(
                              'assets/home_main.png',
                              height: 500,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: InkWell(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(255, 255, 255, 0),
                                      Color.fromRGBO(255, 255, 255, 0.07),
                                      Color.fromRGBO(255, 255, 255, 0.22),
                                      Color.fromRGBO(255, 255, 255, 0.44),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('PLAY')
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Taiwan Excellence Gaming Cup 2022',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Pokémon | Gods Reign',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ShaderMask(
                            shaderCallback: (rect) {
                              return const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black,
                                  Colors.transparent,
                                ],
                              ).createShader(
                                  Rect.fromLTRB(0, 0, rect.width, rect.height));
                            },
                            blendMode: BlendMode.dstIn,
                            child: Image.asset(
                              'assets/home_main.png',
                              height: 500,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: InkWell(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(255, 255, 255, 0),
                                      Color.fromRGBO(255, 255, 255, 0.07),
                                      Color.fromRGBO(255, 255, 255, 0.22),
                                      Color.fromRGBO(255, 255, 255, 0.44),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('PLAY')
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Taiwan Excellence Gaming Cup 2022',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Pokémon | Gods Reign',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
                options: CarouselOptions(
                    height: 600,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        carousalCurrentIndex = index;
                      });
                    }),
              ),
              DotsIndicator(
                dotsCount: 3,
                position: carousalCurrentIndex,
                decorator: DotsDecorator(
                  size: const Size(40.0, 4.0),
                  activeSize: const Size(40.0, 4.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  color: Colors.grey,
                  activeColor: Colors.yellow,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleWidget(
                      label: 'Latest Matches',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 260,
                      child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Container(
                              width: 350,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                gradient: LinearGradient(
                                  begin: Alignment(0.49, -0.21),
                                  end: Alignment(0.49, 1.0487),
                                  colors: [
                                    Color.fromRGBO(40, 40, 40,
                                        0), // Start color with opacity
                                    Color.fromRGBO(87, 87, 87,
                                        0.44), // End color with opacity
                                  ],
                                ),
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.9233, -0.0021),
                                    end: Alignment(0.9233, 1.0487),
                                    colors: [
                                      Color.fromRGBO(42, 42, 58,
                                          0.28), // Start color with opacity
                                      Color(
                                          0xFF1C1C29), // End color (Hex color)
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 10,
                                            ),
                                            decoration: const BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment(
                                                      0.9233, -0.0021),
                                                  end:
                                                      Alignment(0.9233, 1.0487),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        255,
                                                        255,
                                                        255,
                                                        0.22), // Start color with opacity
                                                    Color.fromRGBO(
                                                        255,
                                                        255,
                                                        255,
                                                        0.07), // End color with opacity
                                                  ],
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5))),
                                            child: const Text(
                                              'VALORANT',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          const Text(
                                            'Friday, October 22nd',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('assets/logo/logo_1.png'),
                                          const Text(
                                            '2:0',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                            ),
                                          ),
                                          Image.asset('assets/logo/logo_2.png'),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        'Valorant india invitational by Galaxy Racer',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'India Qualifier #2',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 80,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 5,
                                              vertical: 5,
                                            ),
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                begin:
                                                    Alignment(0.9233, -0.0021),
                                                end: Alignment(0.9233, 1.0487),
                                                colors: [
                                                  Color.fromRGBO(255, 255, 255,
                                                      0.22), // Start color with opacity
                                                  Color.fromRGBO(255, 255, 255,
                                                      0.07), // End color with opacity
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.play_arrow_rounded,
                                                ),
                                                Text(
                                                  'PLAY',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TitleWidget(
                      label: 'Latest Shows',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 250,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    image: DecorationImage(
                                      image:
                                          AssetImage(latestShows[index].image),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  latestShows[index].name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Text(
                                latestShows[index].views,
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                        itemCount: latestShows.length,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TitleWidget(
                      label: 'Trending Clips',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.separated(
                        itemCount: trendingClips.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.darken,
                                ),
                                child: Container(
                                  height: 250,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          trendingClips[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 5,
                                  left: 10,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.grey,
                                        backgroundImage: AssetImage(
                                          trendingClips[index].channelImage,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            trendingClips[index].name,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            trendingClips[index].views,
                                            style: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          height: 60,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.49, -0.21), // Adjust the alignment values
              end: Alignment(0.49, 1.0487), // Adjust the alignment values
              colors: [
                Color.fromRGBO(63, 63, 63, 0.75),
                Color.fromRGBO(57, 57, 57, 0.81),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BottomNavigationButton(
                  image: 'assets/icons/home.png',
                  label: 'Home',
                  onTap: () {},
                ),
                BottomNavigationButton(
                  image: 'assets/icons/date.png',
                  label: 'Event',
                  onTap: () {},
                ),
                BottomNavigationButton(
                  image: 'assets/icons/video.png',
                  label: 'GR TV',
                  onTap: () {},
                ),
                BottomNavigationButton(
                  image: 'assets/icons/shopping bag.png',
                  label: 'Shop',
                  onTap: () {},
                ),
                BottomNavigationButton(
                  image: 'assets/icons/user.png',
                  label: 'Profile',
                  onTap: () {},
                ),
              ],
            ),
          )),
    );
  }
}
