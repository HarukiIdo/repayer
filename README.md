# repayer
## アプリ概要
借りたり貸したお金を管理し、お互いがいつでも確認できるアプリです。  
いわば「借金管理アプリ」です。  

## 背景
友達や親など身近な人とのお金のやり取りでトラブルが起きることはありませんか？  
私は貸した側も借りた側も経験した上で、どちらの立場でも適切な態度と対応を取らないと容易にトラブルになりうると考えてます。  
このアプリのコンセプトは「借した人に安心を、借りた人に信用を。」です。
借りた人は貸したお金のことがきちんと返ってくるか心配で、貸した人は借りたことを忘れがちなので、貸した人との人間関係に亀裂が入る可能性があります。
そんな金銭トラブルからの人間関係の崩壊を防ぎたいと思ったことが作成に至った背景にあります。

## 機能
1. 借りた人が金額を入力すると、貸した人に通知が送られる
2. 借りた人が返済し、貸した人に承認すると合計金額から差し引かれる

[プロジェクト](https://github.com/HarukiIdo/repayer/projects/1)  
[デザイン](https://www.figma.com/file/EA49D3fj7exSX6VD57mOmo/repayer?node-id=0%3A1)

## アーキテクチャ
![スクリーンショット 2022-04-07 9 52 31](https://user-images.githubusercontent.com/72590721/162098575-cb52d78b-e236-4368-80cb-b01f9e4f70d4.png)




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
