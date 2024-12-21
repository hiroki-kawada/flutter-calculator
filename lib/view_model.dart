import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model.dart';

// providerはglobalで宣言　immutableのため特に気にする必要
// StateNotifierProvider<状態を操作するclass, データclass>
// return 状態を操作するclass
final viewModelProvider =
    StateNotifierProvider<ViewModel, Model>((ref) => ViewModel());

// StateNotifierを継承したクラス
// 「Model」データクラスの値の状態を操作するクラス
class ViewModel extends StateNotifier<Model> {
  // 初期化
  ViewModel() : super(Model.initial());

  // 数値が入力された時の処理
  void enterNumber(String number) {
    if (state.operator == null) {
      state = state.copyWith(
        display:
            ((state.firstOperand ?? 0) * 10 + double.parse(number)).toString(),
        firstOperand: (state.firstOperand ?? 0) * 10 + double.parse(number),
      );
    } else {
      state = state.copyWith(
        display:
            ((state.secondOperand ?? 0) * 10 + double.parse(number)).toString(),
        secondOperand: (state.secondOperand ?? 0) * 10 + double.parse(number),
      );
    }
  }

  // 算術演算子が入力された時の処理
  void setOperator(String operator) {
    state = state.copyWith(operator: operator);
  }

  // 計算処理
  void calulataor() {
    if (state.firstOperand != null &&
        state.secondOperand != null &&
        state.operator != null) {
      final double first = state.firstOperand ?? 0;
      final double second = state.secondOperand ?? 0;
      double result;
      switch (state.operator) {
        case "+":
          result = first + second;
          break;
        case "-":
          result = first - second;
          break;
        case "*":
          result = first * second;
          break;
        case "÷":
          if (second == 0) {
            state = state.copyWith(display: "Error");
          }
          result = first / second;
          break;
        default:
          state = state.copyWith(display: "Error");
          return;
      }
      state = state.copyWith(
          display: result.toString(),
          firstOperand: result,
          secondOperand: null,
          operator: null);
    } else {
      state = state.copyWith(display: "Error");
    }
  }

  // オールクリア処理
  void clear() {
    state = Model.initial();
  }
}
