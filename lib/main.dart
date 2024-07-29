import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kalkulator/cubit/cubit/kkal_cubit.dart';
import 'package:kalkulator/cubit/cubit/kkal_state.dart';
import 'package:kalkulator/cubit/sdfsdf.dart';
import 'package:kalkulator/cubit/tap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => KkalTapCubit(),
        ),
        BlocProvider(
          create: (context) => KkalCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: KkalView(),
      ),
    );
  }
}

class KkalView extends StatefulWidget {
  const KkalView({
    super.key,
  });

  @override
  State<KkalView> createState() => _KkalViewState();
}

class _KkalViewState extends State<KkalView> {
  List<Widget> subkkalpage = [
    // const FoodKkal(),
    // const BevergesKkal(),
    // const FlourKkal(),
    // const FastFoodKkal(),
    // const VegetablesKkal(),
    // const FruitsKkal(),
    // const SweetKkal(),
    // const MeatKkal()
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final string = StringClass();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: h * 0.1,
              width: w,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.white70),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: BlocBuilder<KkalCubit, KkalState>(
                  builder: (context, state) {
                    return FittedBox(
                      child: Text(
                        'Kkal:${state.value} ',
                        style: GoogleFonts.teko(
                            textStyle: TextStyle(fontSize: h * 0.07)),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: w,
                height: h * 0.77,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    VoidCallback onPressedAddkkal;
                    // VoidCallback onPressedRemovekkal;
                    switch (index) {
                      case 0:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().kartoshka();
                        };
                        break;
                      case 1:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().plov();
                        };
                        break;
                      case 2:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().sup();
                        };
                        break;
                      case 3:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().cola();
                        };
                        break;
                      case 4:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().samsa();
                        };
                        break;
                      case 5:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().manty();
                        };
                        break;
                      case 6:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().burger();
                        };
                        break;
                      case 7:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().enerdetik();
                        };
                        break;
                      case 8:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().pepsi();
                        };
                        break;
                      case 9:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().shaurma();
                        };
                        break;
                      case 10:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().ric();
                        };
                        break;
                      case 11:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().gracka();
                        };
                        break;
                      case 12:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().makaron();
                        };
                        break;
                      case 13:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().bread();
                        };
                        break;
                      case 13:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().cake();
                        };
                        break;
                      case 13:
                        onPressedAddkkal = () {
                          context.read<KkalCubit>().lag();
                        };
                        break;

                      default:
                        onPressedAddkkal = () {};
                        break;
                    }

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: onPressedAddkkal,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  string.assets[index],
                                ),
                                fit: BoxFit.cover),
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                    );
                  },
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: string.assets.length,
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<KkalCubit>().reset();
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
