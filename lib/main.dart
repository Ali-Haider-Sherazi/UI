import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var greenColor = Color(0xFF049F52);
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        //here you specify the design that you are following
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: greenColor),
              useMaterial3: true,
            ),
            home: const MyHomePage(title: 'easyphone'),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var totalwidth = MediaQuery.of(context).size.width;
    var totalheight = MediaQuery.of(context).size.height;
    var greenColor = Color(0xFF049F52);
    var greyColor = Color(0xffF4F4F4);
    int totalDepartment = 189;
    int totalSubDepartment = 789;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: CircleAvatar(
          //For text
          child: SizedBox(
            width: 1,
          ),
          backgroundColor: Colors.yellow,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
        elevation: 2.0, //<Widget>[]
      ),
      body: SizedBox(
          width: totalwidth,
          height: totalheight,
          child: Align(
            alignment: Alignment.topLeft,
            // You can adjust the alignment as needed
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Card View
                  Container(
                    width: totalwidth,
                    color: greenColor,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 4,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              //left part
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16 *
                                            MediaQuery.textScaleFactorOf(
                                                context)),
                                  ),
                                  SizedBox(
                                    height: totalheight * 0.007,
                                  ),
                                  Text(
                                    "Total Department: $totalDepartment",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14 *
                                            MediaQuery.textScaleFactorOf(
                                                context)),
                                  ),
                                  SizedBox(
                                    height: totalheight * 0.007,
                                  ),
                                  Text(
                                    "Total SubDepartment: $totalSubDepartment",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14 *
                                            MediaQuery.textScaleFactorOf(
                                                context)),
                                  ),
                                  SizedBox(
                                    height: totalheight * 0.007,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.update_rounded,
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: totalwidth * 0.01,
                                        ),
                                        Text(
                                          "update now",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15 *
                                                  MediaQuery.textScaleFactorOf(
                                                      context)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: totalwidth * 0.15,
                              ),
                              //right part
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: totalwidth * 0.22,
                                    child: ElevatedButton(
                                      child: Text(
                                        "Add",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12 *
                                                MediaQuery.textScaleFactorOf(
                                                    context)),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: greenColor),
                                      onPressed: () => {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text("Add Clicked"),
                                        ))
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: totalwidth * 0.22,
                                    child: ElevatedButton(
                                      child: Text(
                                        "Change",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12 *
                                                MediaQuery.textScaleFactorOf(
                                                    context)),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: greenColor),
                                      onPressed: () => {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text("Change Clicked"),
                                        ))
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Common and Favourite
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: totalwidth,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: totalwidth * 0.01,
                            ),
                            Expanded(
                                flex: 1,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r)),
                                  child: SizedBox(
                                    width: totalwidth * 0.3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.account_balance,
                                            color: greenColor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Common"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Text("Department"),
                                          ),
                                          SizedBox(
                                            height: totalheight * 0.015,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: totalwidth * 0.001,
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r)),
                                  child: SizedBox(
                                    width: totalwidth * 0.3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            color: greenColor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Favourite"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Text("Department"),
                                          ),
                                          SizedBox(
                                            height: totalheight * 0.015,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: totalheight * 0.01,
                  ),
                  //more wth easyphone
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: totalwidth * 0.055),
                    child: Text(
                      "More with easyphone",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16 * MediaQuery.textScaleFactorOf(context)),
                    ),
                  ),
                  //department
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: totalwidth * 0.055,
                          vertical: totalheight * 0.01),
                      child: Container(
                        width: totalwidth,
                        height: totalheight * 0.3,
                        color: greyColor,
                        child: Card(
                          color: Colors.white,
                          elevation: 2,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: totalheight * 0.03),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.account_balance,
                                              color: greenColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: totalwidth * 0.02,
                                                  top: totalheight * 0.01),
                                              child: Text(
                                                "Commission",
                                                style: TextStyle(
                                                    fontSize: 13 *
                                                        MediaQuery
                                                            .textScaleFactorOf(
                                                                context),
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: totalheight * 0.015,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: totalheight * 0.03),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.account_balance,
                                              color: greenColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: totalwidth * 0.02,
                                                  top: totalheight * 0.01),
                                              child: Text("DC",
                                                  style: TextStyle(
                                                      fontSize: 13 *
                                                          MediaQuery
                                                              .textScaleFactorOf(
                                                                  context),
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            SizedBox(
                                              height: totalheight * 0.015,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: totalheight * 0.03),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.account_balance,
                                              color: greenColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: totalwidth * 0.02,
                                                  top: totalheight * 0.01),
                                              child: Text("AC",
                                                  style: TextStyle(
                                                      fontSize: 13 *
                                                          MediaQuery
                                                              .textScaleFactorOf(
                                                                  context),
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            SizedBox(
                                              height: totalheight * 0.015,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: totalheight * 0.03),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.account_balance,
                                              color: greenColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: totalwidth * 0.02,
                                                  top: totalheight * 0.01),
                                              child: Text("Artist",
                                                  style: TextStyle(
                                                      fontSize: 13 *
                                                          MediaQuery
                                                              .textScaleFactorOf(
                                                                  context),
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            SizedBox(
                                              height: totalheight * 0.015,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: totalheight * 0.03),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.account_balance,
                                              color: greenColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: totalwidth * 0.02,
                                                  top: totalheight * 0.01),
                                              child: Text("Media",
                                                  style: TextStyle(
                                                      fontSize: 13 *
                                                          MediaQuery
                                                              .textScaleFactorOf(
                                                                  context),
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            SizedBox(
                                              height: totalheight * 0.015,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: totalheight * 0.03),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.account_balance,
                                              color: greenColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: totalwidth * 0.02,
                                                  top: totalheight * 0.01),
                                              child: Text(
                                                "Hospital",
                                                style: TextStyle(
                                                    fontSize: 13 *
                                                        MediaQuery
                                                            .textScaleFactorOf(
                                                                context),
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: totalheight * 0.015,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: totalheight * 0.03),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.account_balance,
                                              color: greenColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: totalwidth * 0.02,
                                                  top: totalheight * 0.01),
                                              child: Text(
                                                "Stations",
                                                style: TextStyle(
                                                    fontSize: 13 *
                                                        MediaQuery
                                                            .textScaleFactorOf(
                                                                context),
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: totalheight * 0.015,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: totalheight * 0.03),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.settings_ethernet_rounded,
                                              color: greenColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: totalwidth * 0.02,
                                                  top: totalheight * 0.01),
                                              child: Text(
                                                "See more",
                                                style: TextStyle(
                                                    fontSize: 13 *
                                                        MediaQuery
                                                            .textScaleFactorOf(
                                                                context),
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: totalheight * 0.015,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         SizedBox(
                                width: totalwidth * 0.43,
                                child: Card(
                                  color: Colors.green,
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: totalwidth * 0.03,
                                    right: totalwidth * 0.03,
                                    top: totalheight*0.02),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "FeedBack",
                                          style: TextStyle(
                                              fontSize: 16 *
                                                  MediaQuery.textScaleFactorOf(
                                                      context),
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: totalheight*0.008,),
                                        Text(
                                          "Give us your feed back to improve us.",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontSize: 13 *
                                                  MediaQuery.textScaleFactorOf(
                                                      context)),
                                        ),
                                        SizedBox(
                                          height: totalheight * 0.05,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: OutlinedButton(
                                              onPressed: () {},
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Feedback",style: TextStyle(color: Colors.white),),
                                                  Icon(Icons.navigate_next,color: Colors.white,)
                                                ],
                                              )),
                                        ),
                                        SizedBox(height: totalheight*0.01,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                        SizedBox(
                          width: totalwidth * 0.43,
                          child: Card(
                            color: Colors.black,
                            elevation: 4,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: totalwidth * 0.03,
                                  right: totalwidth * 0.03,
                                  top: totalheight*0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "FeedBack",
                                    style: TextStyle(
                                        fontSize: 16 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: totalheight*0.008,),
                                  Text(
                                    "Give us your feed back to improve us.",
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: 13 *
                                            MediaQuery.textScaleFactorOf(
                                                context)),
                                  ),
                                  SizedBox(
                                    height: totalheight * 0.05,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: OutlinedButton(
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Feedback",style: TextStyle(color: Colors.white),),
                                            Icon(Icons.navigate_next,color: Colors.white,)
                                          ],
                                        )),
                                  ),
                                  SizedBox(height: totalheight*0.01,)
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),




                ],
              ),
            ),
          ),
        ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
