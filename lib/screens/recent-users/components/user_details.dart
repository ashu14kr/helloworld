import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height/1.7,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: dimbackground
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height/60,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Recent Users", style: TextStyle(color: Colors.white, fontSize: 20,)),
          ),
          SizedBox(height: size.height/60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("UserName", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                SizedBox(width: size.width/40,),
                const Text("UserEmail", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                const Text("RegistrationDate", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                const Text("DeleteUser", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
              ],
            ),
          ),
          const Divider(thickness: 0.4, color: Colors.grey,),
          SizedBox(height: size.height/60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: size.height/2.3,
              width: size.width,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: ((context, index) {
                return Column(
                  children: [
                  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                       Container(
                         height: size.height/30,
                         width: size.width/40,
                         decoration: BoxDecoration(
                           color: backgroundcolor,
                           borderRadius: BorderRadius.circular(4)
                         ),
                         child: const Center(child: Text("A", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal,),)),
                       ),
                       SizedBox(width: size.width/80,),
                       const Text("Ashutosh kumar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal,),),
                      ],
                    ),
                    const Text("ashuh14th@gmail.com", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal,),),
                    const Text("03-08-2022", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.delete, color: Colors.red,))
                  ],
              ),
                ),
                const Divider(thickness: 0.4, color: Colors.grey,),
                  ],
                );
              })),
            ),
          )
        ],
      ),
    );
  }
}