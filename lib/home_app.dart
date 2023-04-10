import 'package:countear_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context , state){
      return Scaffold(
        appBar: AppBar(
          title: const Text('counter'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 100, 5, 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(fontSize: 40),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                         Text(
                            BlocProvider.of<CounterCubit>(context).teamAPoint.toString(),
                          style: const TextStyle(fontSize: 100),
                        ),
                        const SizedBox(height: 30,),
                        bottomWidget(
                            text: 'Add 1 point',
                            onTap: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'A', buttonNumber: 1);
                            }
                        ),
                        const SizedBox(height: 30,),
                        bottomWidget(
                            text: 'Add 2 point',
                            onTap: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'A', buttonNumber: 2);
                            }
                        ),
                        const SizedBox(height: 30,),
                        bottomWidget(
                            text: 'Add 3 point',
                            onTap: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'A', buttonNumber: 3);
                            }
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(fontSize: 40),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                         Text(
                          BlocProvider.of<CounterCubit>(context).teamBPoint.toString(),
                          style: const TextStyle(fontSize: 100),
                        ),
                        const SizedBox(height: 30,),
                        bottomWidget(
                            text: 'Add 1 point',
                            onTap: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'B', buttonNumber: 1);
                            }
                        ),
                        const SizedBox(height: 30,),
                        bottomWidget(
                            text: 'Add 2 point',
                            onTap: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'B', buttonNumber: 2);
                            }
                        ),
                        const SizedBox(height: 30,),
                        bottomWidget(
                            text: 'Add 3 point',
                            onTap: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'B', buttonNumber: 3);
                            }
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 80,),
              bottomWidget(
                  text: 'Reset',
                  onTap: (){
                   BlocProvider.of<CounterCubit>(context).resetPoint();
                  }
              )
            ],
          ),
        ),
      );
    }, listener: (context , state){
    }
    );
  }

  Widget bottomWidget({
    required String text,
    required VoidCallback? onTap,
}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(child: Text(text,style: const TextStyle(fontSize: 22, color: Colors.white),)),
      ),
    );
  }
}

