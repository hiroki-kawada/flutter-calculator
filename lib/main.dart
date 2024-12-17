import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'viewmodel.dart';
import 'model.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //　「ref.watch」を使用してプロバイダを監視
    final state = ref.watch(viewModelProvider);
    // 「ref.read」を使用してプロバイダの状態をユーザー操作で状態変更させる
    final viewModel = ref.read(viewModelProvider.notifier);

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Calulataor"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(model: state),
              CalculatorKeyPad(viewmodel: viewModel)
            ],
          ),
        ));
  }
}

class TextField extends StatefulWidget {
  final Model model;
  const TextField({super.key, required this.model});

  @override
  State<StatefulWidget> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(widget.model.display),
      ),
    );
  }
}

class CalculatorKeyPad extends StatelessWidget {
  final Viewmodel viewmodel;
  const CalculatorKeyPad({super.key, required this.viewmodel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Column(
          children: [
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildExpanded(
                    flex: 3,
                    color: Colors.grey,
                    text: "AC",
                    onPressed: () => viewmodel.clear()),
                buildExpanded(
                    flex: 1,
                    color: Colors.orange,
                    text: "÷",
                    onPressed: () => viewmodel.setOperator("÷")),
              ],
            )),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "7",
                    onPressed: () => viewmodel.enterNumber("7")),
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "8",
                    onPressed: () => viewmodel.enterNumber("8")),
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "9",
                    onPressed: () => viewmodel.enterNumber("9")),
                buildExpanded(
                    flex: 1,
                    color: Colors.orange,
                    text: "*",
                    onPressed: () => viewmodel.setOperator("*")),
              ],
            )),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "4",
                    onPressed: () => viewmodel.enterNumber("4")),
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "5",
                    onPressed: () => viewmodel.enterNumber("5")),
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "6",
                    onPressed: () => viewmodel.enterNumber("6")),
                buildExpanded(
                    flex: 1,
                    color: Colors.orange,
                    text: "-",
                    onPressed: () => viewmodel.setOperator("-")),
              ],
            )),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "1",
                    onPressed: () => viewmodel.enterNumber("1")),
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "2",
                    onPressed: () => viewmodel.enterNumber("2")),
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "3",
                    onPressed: () => viewmodel.enterNumber("3")),
                buildExpanded(
                    flex: 1,
                    color: Colors.orange,
                    text: "+",
                    onPressed: () => viewmodel.setOperator("+")),
              ],
            )),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "00",
                    onPressed: () => viewmodel.enterNumber("00")),
                buildExpanded(
                    flex: 1,
                    color: Colors.grey,
                    text: "0",
                    onPressed: () => viewmodel.enterNumber("0")),
                buildExpanded(
                    flex: 2,
                    color: Colors.orange,
                    text: "=",
                    onPressed: () => viewmodel.calulataor()),
              ],
            )),
          ],
        ));
  }
}

// ボタンWidget
Widget buildExpanded(
    {required int flex,
    required Color color,
    required String text,
    required VoidCallback onPressed}) {
  return Expanded(
      flex: flex,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(backgroundColor: color),
          child: Text(text)));
}
