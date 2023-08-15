import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const styy = TextStyle(color: Colors.black87,
            fontWeight: FontWeight.bold,fontSize: 23);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title:  Text("CRAZY BUY",
            style:GoogleFonts.rubikWetPaint(
              textStyle: styy,
              
            )),
         
         actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_outlined,color: Colors.black,size: 28,)),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            child: Container(
              height: 50,
              width: 50,
              
              decoration:  const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("assets/imgs/profile.png",),fit: BoxFit.cover)
              ),
              
            ),
          ),



          // SizedBox(
          //   height: 30,
          //   width: 30,
          //   child: ClipOval(child: Image.asset("assets/imgs/profile.png",scale: 10,)),
          // ),
          
          const SizedBox(width: 15,)
         ],
          ),
          body: Column(
            children:[
              const SizedBox(height: 40,),
              Center(
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    
                    height:170,
                    width:  MediaQuery.of(context).size.width-40,
                    decoration:  BoxDecoration(color: const Color.fromARGB(255, 161, 213, 255),borderRadius: BorderRadius.circular(7)),
                 child: Row(

                  children: [
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child:  const Center(child: Text("Best Seller",style: TextStyle(color:  Color.fromARGB(255, 161, 213, 255),fontWeight: FontWeight.bold,fontSize: 18),)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Best By Solo Dr .Dre",style: TextStyle(color: Colors.black,fontSize: 16),),
                                        const Text("Wireless",style: TextStyle(color: Colors.black,fontSize: 16),),
                                                                                const Text("24.90Rs ",style: TextStyle(color: Colors.black,fontSize: 16),)

                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        image: const DecorationImage(image: NetworkImage("https://m.media-amazon.com/images/I/51-+SFrhYFL._UX675_.jpg"))
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    )

                  ],
                  
                 ),
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}