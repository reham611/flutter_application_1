import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: (){
          debugPrint('Help');
          },
           icon: const Icon(
            Icons.info_outline,
          ),
        ),
       ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/ohnoo.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.purpleAccent,
              width: double.infinity,
              child: const Text(
                ' Some of the Apps by Flutter',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.purple, 
              ),
              onPressed: (){
              debugPrint('Click here to see more');
            },
             child: const Text('Click here to see more'),
             ),
             
             OutlinedButton(onPressed: (){
              debugPrint('see the importance of each of them');
            },
             child: const Text('see the importance of each of them'),
             ),
      
             TextButton(onPressed: (){
              debugPrint('Mobile Apps');
            },
             child: const Text('Mobile Apps'),
             ),
      
             GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
      
             child: Row(
      
      
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
              
               Icon(Icons.local_fire_department,color: Colors.orange,),
               
               Text('Thank You'),
               Icon(Icons.local_fire_department,color: Colors.orange,),
      
      
             ],)
             ),
      
      
             Switch(value: isSwitch,
              onChanged: (bool newBool){
                setState(() {
                  isSwitch = newBool;
                });
               
             }),
      
             Checkbox(value: isCheckbox, onChanged: (bool? newBool){
               setState(() {
                  isCheckbox = newBool;
                });
             }),
      
             Image.network('https://www.fuveau.fr/wp-content/uploads/a138804013244ca9a3ef882dbc92b821.jpg')
      
      
      
      
      
          ],
      
      
      
      
      
      
      
      
        ),
      ),
    );
  }
}
