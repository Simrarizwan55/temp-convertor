import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp_convertor/temp_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TempProvider>(
        builder: (_, tempProvider, __) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme
                  .of(context)
                  .colorScheme
                  .inversePrimary,
              title: const Text(
                "Temperature Convertor", style: TextStyle(color: Colors.black,
                fontSize: 15, fontWeight: FontWeight.bold,),),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                top:40,
                bottom:40,
                right: 40,
                left:40,
              ),
              child: SingleChildScrollView(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Temperature in Celsius",
                      hintStyle: const TextStyle(
                          color: Colors.blueGrey, fontSize: 15),
                      filled: true, fillColor: Colors.white,contentPadding: const EdgeInsets.symmetric
                      (vertical:16.0,horizontal:10.0),
                        border: OutlineInputBorder(borderRadius:
                    BorderRadius.circular(8.0), borderSide: const BorderSide(color: Colors.white54,width:2.0),),
                        enabledBorder: OutlineInputBorder(borderRadius:
              BorderRadius.circular(8.0), borderSide: const BorderSide(color: Colors.white54,width:2.0),)
                    ),
                    onChanged: (value){
                      double ?temp = double.tryParse(value);
                          if(temp!=null)
                            {
                              tempProvider.setCelsius(temp);
                            }
                    },
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){} ,
                      child:const Text("Convert celsius into Fahrenheit or kelvin") ,),
                  const SizedBox(height: 20,),
                  Text("Fahrenheit: ${tempProvider.fahrenheit}"),
                  const SizedBox(height: 20,),
                  Text("Kelvin: ${tempProvider.kelvin}"),
                  const SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: tempProvider.reset,
                    style:ElevatedButton.styleFrom(backgroundColor:Colors.blueAccent,),
                    child: const Text("Reset",style:
                    TextStyle(color:Colors.black,fontSize: 15),),
                  )
                ],
              ),
            ),
          )
          );
        }
    );
  }
}