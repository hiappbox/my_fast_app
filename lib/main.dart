import 'package:flutter/material.dart';

main() {
  runApp(const MyFastApp());
}

class MyFastApp extends StatelessWidget {
  const MyFastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

String hello = "Hello World 2 dfsdfsdfsd  fsdfsdf";

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              hello,
              style: const TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 10,),
            Text(hello),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.red,width: 5),
                color: Colors.green.shade900,
              ),
              margin: const EdgeInsets.all(50),
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
              height: 100,
              width: double.infinity,
              child: Text(hello,style: const TextStyle(color: Colors.white),),
            ),
            const Icon(Icons.add_circle,size: 100,color: Colors.blue,),
            Image.network("https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/326470412_755543732253164_3680636827391914769_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHAWSGcdY4Cs8ttcueX3_vx0Yuo_SNxJljRi6j9I3EmWF5ZCjIqJmI3YB38hEjlAy2jCdL28Dr3eh502dx49zKg&_nc_ohc=IpEMTe24-AQAX_NuGzF&_nc_ht=scontent.fdac41-1.fna&oh=00_AfClefki899HK36dttWdyC1dUwRZ9b78nq45PdqxPWoeZA&oe=65A2083D",height: 100,),
            ClipOval(child: Image.asset("assets/4.jpg",height: 100,)),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset("assets/4.jpg",height: 100,)),

          ],
        ),
      ),
    );
  }
}
