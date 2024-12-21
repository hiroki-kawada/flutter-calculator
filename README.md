# calculator
## アプリ概要
 - Flutterの勉強のために作成した電卓アプリ
 - 「四則計算」のみできるシンプルな電卓

## 目的
 - Flutterを使用してモバイルアプリを作成方法の学習および復習
 - MVVMアーキテクチャをFlutterで実現方法の学習

## 定義した外部パッケージ
 - build_runner
   - Dartでコード生成を実行するためのパッケージ。
   - 下記に記載される「annotation」パッケージが提供するannotationに指定されたクラスに基づきコードを自動生成を行うために必要。
 
 - freezed
   - データクラスと必要な機能を自動生成してくれるパッケージ。
   - APIからjson形式のレスポンスを格納するデータクラスもサポートできますが今回は未使用。
   - 「copyWith」関数が使用でき特定のプロパティだけ変更して新しいインスタンスを作成することが可能。
   - freezed_annotationによって指定されたクラスに対して自動コード生成を行う。

 - freezed_annotation
   - freezedと組み合わせて使用するアノテーションを提供するパッケージ。
   - freezedによるコード生成を指示するアノテーションを提供します。

 - flutter_riverpod
   - flutterで状態管理を行うパッケージ。
   - 使用しない場合は各widget内で更新処理を管理し状態変更時は「setState」内で処理を実行する必要があり他widgetに対して処理の共有が難しい。
   - このパッケージを使用することで各widgetの外で状態管理が可能になり状態更新時も自動で更新され他widgetに対して処理を共有することは簡単にできる。

 - riverpod_annotation（定義しただけ）
   - flutter_riverpodと組み合わせて使用するアノテーションを提供するパッケージ。
   - riverpodの状態管理を行うコードを自動コード生成できる。（※Providerの定義を自動生成できる）
   - 今回は自動生成できなかったので自分でProviderを定義した。（※理由は不明）

