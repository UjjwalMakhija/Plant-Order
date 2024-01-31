import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_order/common/global_variables.dart';
import 'package:plant_order/common/models/pantmodel.dart';
import 'package:plant_order/features/user/plantdetails/screens/plantdetails_screen.dart';

class Tabbarview extends StatefulWidget {
  const Tabbarview({super.key});

  @override
  State<Tabbarview> createState() => _TabbarviewState();
}

class _TabbarviewState extends State<Tabbarview> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void navigatetodetailsScreen() {
    Navigator.pushNamed(context, Plantdetailscreen.routeName);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(GlobalVariables.plantimages.length);
    print(GlobalVariables.plantimages[2]);
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(),
          child: TabBar(
              automaticIndicatorColorAdjustment: false,
              // isScrollable: true,
              splashFactory: NoSplash.splashFactory,
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.black,
              labelStyle: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                // height: 1.3
              )),
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              //  indicatorColor: Colors.black,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black),
                // backgroundBlendMode: BlendMode.clear
              ),
              tabs: [
                Tab(
                  child: Container(
                    width: width * 0.2,
                    child:
                        Align(alignment: Alignment.center, child: Text("All")),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text("Outdoor"),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text("Indoor"),
                  ),
                ),
              ]),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          height: 350,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: GlobalVariables.plantimages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: navigatetodetailsScreen,
                        child: Container(
                            height: 100,
                            width: width * 0.5,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Column(children: [
                                  const SizedBox(
                                    height: 150,
                                  ),
                                  Container(
                                    height: 100,
                                    decoration: const BoxDecoration(
                                        gradient: RadialGradient(
                                      colors: [
                                        Color.fromARGB(175, 100, 232, 105),
                                        Color.fromARGB(0, 175, 170, 170),
                                      ],
                                    )),
                                  ),
                                ]),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, right: 40, top: 70),
                                      child: Container(
                                        height: 173,
                                        width: 118,
                                        decoration: BoxDecoration(
                                            //     border: Border.all(
                                            //   color: Colors.black,
                                            // )
                                            ),
                                        child: Image.asset(
                                          GlobalVariables.plantimages[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(right: 10),
                                      width: width * 0.5,
                                      child: Text(
                                        '\$20',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.openSans(
                                            textStyle: const TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                        )),
                                      ),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            alignment: Alignment.center,
                                            height: 200,
                                            width: width * 0.05,
                                            decoration: const BoxDecoration(),
                                            child: RotatedBox(
                                              quarterTurns: 3,
                                              child: Text(
                                                GlobalVariables.names[index],
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.openSans(
                                                  textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              alignment: Alignment.center,
                                              fixedSize: Size.fromHeight(39),
                                            ),
                                            child: Text(
                                              "Add to cart",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.openSans(
                                                  textStyle: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 39,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black,
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite_outline_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                    );
                  }),
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: GlobalVariables.plantimages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: navigatetodetailsScreen,
                        child: Container(
                            height: 100,
                            width: width * 0.5,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 0.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Column(children: [
                                  const SizedBox(
                                    height: 150,
                                  ),
                                  Container(
                                    height: 100,
                                    // width: width * 0.6,
                                    decoration: const BoxDecoration(
                                        // border: Border.all(color: Colors.black),
                                        gradient: RadialGradient(
                                      colors: [
                                        Color.fromARGB(175, 100, 232, 105),
                                        Color.fromARGB(0, 175, 170, 170),
                                      ],
                                      // stops: [0.0, 0.5],
                                    )),
                                  ),
                                ]),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, right: 40, top: 70),
                                      child: Container(
                                        height: 173,
                                        width: 118,
                                        decoration: BoxDecoration(
                                            //     border: Border.all(
                                            //   color: Colors.black,
                                            // )
                                            ),
                                        child: Image.asset(
                                          GlobalVariables.plantimages[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(right: 10),
                                      width: width * 0.5,
                                      child: Text(
                                        '\$20',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.openSans(
                                            textStyle: const TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                        )),
                                      ),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            alignment: Alignment.center,
                                            height: 200,
                                            width: width * 0.05,
                                            decoration: BoxDecoration(
                                                // border: Border.all(
                                                //     // color: Colors.black
                                                //     )
                                                ),
                                            child: RotatedBox(
                                              quarterTurns: 3,
                                              child: Text(
                                                GlobalVariables.names[index],
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.openSans(
                                                  textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 10),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              alignment: Alignment.center,
                                              fixedSize: Size.fromHeight(39),
                                            ),
                                            child: Text(
                                              "Add to cart",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.openSans(
                                                  textStyle: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.black)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 39,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black,
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite_outline_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                    );
                  }),
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: GlobalVariables.plantimages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: navigatetodetailsScreen,
                        child: Container(
                            height: 100,
                            width: width * 0.5,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 0.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Column(children: [
                                  const SizedBox(
                                    height: 150,
                                  ),
                                  Container(
                                    height: 100,
                                    // width: width * 0.6,
                                    decoration: const BoxDecoration(
                                        // border: Border.all(color: Colors.black),
                                        gradient: RadialGradient(
                                      colors: [
                                        Color.fromARGB(175, 100, 232, 105),
                                        Color.fromARGB(0, 175, 170, 170),
                                      ],
                                      // stops: [0.0, 0.5],
                                    )),
                                  ),
                                ]),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, right: 40, top: 70),
                                      child: Container(
                                        height: 173,
                                        width: 118,
                                        decoration: BoxDecoration(
                                            //     border: Border.all(
                                            //   color: Colors.black,
                                            // )
                                            ),
                                        child: Image.asset(
                                          GlobalVariables.plantimages[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(right: 10),
                                      width: width * 0.5,
                                      child: Text(
                                        '\$20',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.openSans(
                                            textStyle: const TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                        )),
                                      ),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            alignment: Alignment.center,
                                            height: 200,
                                            width: width * 0.05,
                                            decoration: BoxDecoration(
                                                // border: Border.all(
                                                //     // color: Colors.black
                                                //     )
                                                ),
                                            child: RotatedBox(
                                              quarterTurns: 3,
                                              child: Text(
                                                GlobalVariables.names[index],
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.openSans(
                                                  textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 10),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              alignment: Alignment.center,
                                              fixedSize: Size.fromHeight(39),
                                            ),
                                            child: Text(
                                              "Add to cart",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.openSans(
                                                  textStyle: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.black)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 39,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black,
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.favorite_outline_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                    );
                  })
            ],
          ),
        ),
      ],
    );
  }
}
