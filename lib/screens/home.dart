import 'package:example/providers/counter_providier.dart';
import 'package:example/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
      //method 1
          TextButton(
            onPressed: () {
            Provider.of<CounterProvidier>(context,listen: false).incrementCounter();
          }, child: Text("hello1 ${Provider.of<CounterProvidier>(context,listen: true).counter}")),



 Consumer<CounterProvidier>(builder: (context, counterProvidier, child) {
   return TextButton(onPressed: () {
             counterProvidier.incrementCounter();
            }, child: Text("hello2 ${counterProvidier.counter}"));
 },
   
 ),



          Consumer<CounterProvidier>(builder: (context, counterProvider, child) {

            if(counterProvider.errorString!=''){
              return Text(counterProvider.errorString);
            }
     else if(counterProvider.loading==true){
        return CircularProgressIndicator();
      }




            return Text(counterProvider.counter.toString());
          },),

          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Scrren2();
            },));
          }, child: Text("Go to scrreen 2"))


        ],
      )),
    );
  }
}
