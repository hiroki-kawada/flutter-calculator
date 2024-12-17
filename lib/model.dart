// 「@freezed」を使用するためのインポート文
import 'package:freezed_annotation/freezed_annotation.dart';

// 自動生成するdartファイルを記述
// 「ファイル名と同じ名称」+「.freezed.dart」にしないとファイルを自動生成されない。
// Freezedで生成されるデータクラス
part 'model.freezed.dart';

// 「freezed」データクラスと必要な機能を自動生成してくれるパッケージのこと
// freezedでコード生成するために「@freezed」を記述
@freezed
class Model with _$Model {
  const factory Model({
    required String display,
    double? firstOperand,
    double? secondOperand,
    String? operator,
  }) = _Model;

  factory Model.initial() => const Model(
        display: "0.0",
        firstOperand: null,
        secondOperand: null,
        operator: null,
      );
}
