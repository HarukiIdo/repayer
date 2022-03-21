# repayer
# アプリ概要
友達や親など身近な人とのお金のやり取りでトラブルが起きることはありませんか？
借りたり貸したお金を管理し、お互いがいつでも確認できるアプリです。
機能は以下
1. 借りた人が金額を入力すると、貸した人に通知が送られる
2. 借りた人が返済し、貸した人に承認すると合計金額から差し引かれる


## 特徴

- 借りた人と貸した人と合意の元管理ができる
    -与信に関わるため、信頼・信用が得られる必要があると考えたため

[プロジェクト](https://github.com/HarukiIdo/repayer/projects/1)


## 実行手順
1. Firebaseエミュレータを起動
```
firebase emulators:start
```

2. デバイス選択(複数デバイス起動時のみ)
```
flutter devices
```

3. アプリ起動
```
flutter run --dart-define=FLAVOR=<stg | prod> --dart-define=USE_EMULATOR=<flase | true>
```
- 複数デバイス選択時
2.で確認したdevice ID(先頭1文字)を `-d`コマンドで指定する
```
flutter run --dart-define=FLAVOR=<stg | prod> --dart-define=USE_EMULATOR=<flase | true> -d <device ID>
```

## functionのデプロイ
一度のデプロイする数は10個まで
```
cd functios
firebase deploy --only functions:<関数名,関数名,...> --project <プロジェクトID> 
```



## コード自動生成
- fromJson/toJsonを生成する
- foundation.dartを追加することで、Devtoolでオブジェクトが読みやすくなるらしい
```
import 'package:flutter/foundation.dart';
part 'request_follow_result.g.dart';
```

```
flutter pub run build_runner watch --delete-conflicting-outputs
```