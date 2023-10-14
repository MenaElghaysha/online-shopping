
import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:rate/rate.dart';
import 'constant.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'custome_container.dart';

class MainHomePage extends StatefulWidget{
  const MainHomePage({Key? key})  : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_new_outlined),),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            setState(() {
              favorite_isSelected=!favorite_isSelected;
            });
          }, icon: Icon(Icons.favorite,size: 28,
            color: favorite_isSelected? activeColor: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined,size: 28,))
        ],
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //         colors: [
        //           Color(0xff0c0c0c),
        //           Color(0xff121212),
        //         ],
        //       )
        //   ),
        // ),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        // decoration:  BoxDecoration(
        //
        //   gradient: LinearGradient(
        //     begin:Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [
        //         Colors.black87,
        //         Color(0xff121212),
        //         Color(0xff222222),
        //       ],
        //    ),
        //
        // ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black54,
                /*AppColours.appgradientfirstColour,
                    AppColours.appgradientsecondColour*/
              ],
              begin: FractionalOffset(-5, 5),
              end: FractionalOffset(-5, -5),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
          // backgroundBlendMode: BlendMode.color,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children:[ Container(
                    width: 300,
                    height: 385,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
                    ),
                    child: Image.asset("assets/images/11.png"),
                  ),

                    // SmoothPageIndicator(
                    //   controller: controller,
                    //   count:  3,
                    //   axisDirection: Axis.horizontal,
                    //   effect:  const SlideEffect(
                    //       spacing:  8.0,
                    //       radius:  4.0,
                    //       dotWidth:  24.0,
                    //       dotHeight:  5.0,
                    //       paintStyle:  PaintingStyle.fill,
                    //       strokeWidth:  1.5,
                    //       dotColor:  Colors.grey,
                    //       activeDotColor:  Colors.red
                    //   ),
                    // ),

                    Row(
                      children: [
                        Container(
                        color: Colors.red,
                          width:28,
                          height: 4,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
                          color: Colors.grey,
                          width: 20,
                          height: 4,
                        ),
                        Container(
                          color:  Colors.grey[700],
                          width: 14,
                          height: 4,
                        ),
                      ],
                    )
                ],),


               Column(
                 children: [
                   //CustomContainer(color: Colors.white,child: Icon(Icons.account_circle),width: 20,height: 20,onTap: (){}),
                   SizedBox(height: 30,),
                   CustomContainer(text: "S", state: 1,Select: false,),
                   CustomContainer(text: "m", state: 2,Select: false),
                   CustomContainer(text: "L", state: 3,Select: true ),
                   CustomContainer(text: "XL", state: 4,Select: false),
                   CustomContainer(text: "2XL", state: 5,Select: false),
                   SizedBox(height: 30,),


                 ],
               )
              ],
            ),



            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Belguim EURO",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontFamily: fontFamily,fontSize: 26)),
                    subtitle: Text("20/21 Away by Adidas",style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,fontFamily: fontFamily,color: Colors.grey,letterSpacing: 1.5,wordSpacing: 1,height: 1.6),),
                    contentPadding: EdgeInsets.only(top: 10,bottom: 30),
                  ),

                  Row(
                    children: [


                      // RatingBarIndicator(
                      //   rating: rate,
                      //   itemBuilder: (context, index) {
                      //     return Icon(
                      //     Icons.star,
                      //     color: activeColor,
                      //   );
                      //   },
                      //   unratedColor: Color(0xff81272d),
                      //   itemCount: 5,
                      //   itemSize: 25.0,
                      //   direction: Axis.horizontal,
                      // ),
                      Rate(
                        iconSize: 25,
                        color: activeColor,
                        allowHalf: true,
                        allowClear: false,
                        initialValue: 3.5,
                        readOnly: false,
                        onChange: (value) {
                          setState(() {
                            rate=value;
                            print(value);
                            print(rate);
                          });
                                },
                      ),

                      SizedBox(width: 6,),
                      Text("$rate",style: TextStyle(color: Colors.grey,fontSize: 15,fontFamily: fontFamily,fontWeight: FontWeight.w600),),
                      const SizedBox(width: 90,),

                      Container(
                        padding: const EdgeInsets.all(5),
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xff333333),
                          borderRadius:BorderRadius.circular(10),
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                counter--;
                              });
                            },
                            child: Container(
                              width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: activeColor,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: const Icon(Icons.remove,color: Colors.white,)),

                          ),

                            Text("${counter.toInt()}",style: TextStyle(color: Colors.white,fontFamily: fontFamily,fontSize: 18),),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  counter++;
                                });
                              },
                              child: Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                      color: activeColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,)),

                            ),

                        ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Details",style: TextStyle(fontSize: 15,fontFamily: fontFamily,color: Colors.grey,),textAlign: TextAlign.start),
                          const SizedBox(height: 10,),
                          RichText(
                              text:  TextSpan(
                                  children: [
                                TextSpan(text: "Matrial: ",style: TextStyle(color: Colors.white,fontFamily: fontFamily,fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: 1.2)),
                                    TextSpan(text: " Polyester",style: TextStyle(color: Colors.grey,fontFamily: fontFamily,fontSize: 15,fontWeight: FontWeight.w400,letterSpacing: 1)),
                                  ]),
                          ),
                          const SizedBox(height: 10,),
                          RichText(
                              text:  TextSpan(
                                  children: [
                                    TextSpan(text: "Shipping: ",style: TextStyle(color: Colors.white,fontFamily: fontFamily,fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: 1)),
                                    TextSpan(text: " In  5 to  6 Days",style: TextStyle(color: Colors.grey,fontFamily: fontFamily,fontSize: 15,fontWeight: FontWeight.w400,letterSpacing: 1)),
                                  ])),
                          const SizedBox(height: 10,),

                          RichText(
                              text:  TextSpan(
                                  children: [
                                    TextSpan(text: "Returns: ",style: TextStyle(color: Colors.white,fontFamily: fontFamily,fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: 1)),
                                    TextSpan(text: " Within 20 Days",style: TextStyle(color: Colors.grey,fontFamily: fontFamily,fontSize: 15,fontWeight: FontWeight.w400,letterSpacing: 1)),
                                  ])),
                        ],
                      ),


                      Container(
                       // alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical:25),
                        width: 90,
                        height: 115,
                        decoration: BoxDecoration(
                          color: activeColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child:
                        InkWell(
                          onTap: (){},
                          child: Column(
                            children: [
                              const Icon(Icons.shopping_bag_outlined,size: 30,color: Colors.white,),
                              const SizedBox(height: 10,),
                              Text("\$89",style: TextStyle(color: Colors.white,fontFamily: fontFamily,fontWeight: FontWeight.w900,fontSize: 20,letterSpacing: 1.8),)
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )








          ],
        ),
      ),




    );
  }
}


