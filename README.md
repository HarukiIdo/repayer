# repayer
# アプリ概要
友達や親など身近な人とのお金のやり取りでトラブルが起きることはありませんか？
借りたり貸したお金を管理し、お互いがいつでも確認できるアプリです。
機能は以下
1. 借りた人が金額を入力すると、貸した人に通知が送られる
2. 借りた人が返済し、貸した人に承認すると合計金額から差し引かれる

[プロジェクト](https://github.com/HarukiIdo/repayer/projects/1)
[デザイン](https://www.figma.com/file/EA49D3fj7exSX6VD57mOmo/repayer?node-id=0%3A1)


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
