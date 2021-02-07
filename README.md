# アプリケーション名

## HairTweet

# 概要

**美容師のアシスタントを中心としたコミュニケーションアプリ**  
<br>
  写真、コメントの投稿をメインとしているサービスです。  
  <br>
  ニックネームで交流できるため、友人、知人には言えない愚痴や悩み相談などをすることができるのがメリットです。  
<br>

 * 機能一覧
  * ツイート一覧表示/ ツイート投稿/ ツイート削除/ ツイート編集/ ツイート詳細表示/
  * ユーザー新規登録/ログイン/ ツイートへコメント/ ツイート検索  
  <br>
  ※画像は画像URLのアドレスを入力します。

 ## 目指した問題解決

日々過酷な労働環境で頑張っているアシスタントへの精神的なケアができないかと考えました。  
<br>
このアプリケーションを通してアシスタントの仕事へのモチベーション、技術力の向上に繋げてほしいと思います。

* 目的
  * 自身で手掛けたヘアスタイルの画像を投稿しフィードバックをもらう
  * アシスタント同士で練習に役立つ情報を共有する
  * 休憩中・勤務後にリフレッシュしてもらう
  * 先輩には言えない悩みを書き出す


## 本番環境

[hair-tweet](https://hair-tweet.herokuapp.com/)

>ログイン情報（テスト）
 * nickname: test
 * E-mail: test@test
 * Password: test1234

  >Basic認証
   * ID: hitochan
   * Pass: 1104


## DEMO

**利用方法** 

- 新規登録しログインするとツイート投稿の投稿ができます。
- 投稿したツイートは一覧で表示されます。
- ツイート右側にドロップダウンのボタンに〈詳細〉〈編集〉〈削除〉機能があります。
- 〈詳細〉はログインしている全てのユーザーに表示されます。コメント機能でメッセージを送ることが出来ます。
- 〈編集〉〈削除〉は投稿したユーザーのみに表示されます。編集、削除出来ます。
- 投稿を検索することも出来ます。


**新規登録画面**


<img src="https://i.gyazo.com/1c545e0ad91405a61f6f1b7f9faa38ff.png" width="320px">  
<br>  
新規登録画面で以下の項目を入力しログインします。  
<br>
〈Nickname/Email/Password/Password confirmaion〉  
<br>
<br>

**トップページ**


<img src="https://i.gyazo.com/83d0c410975ac8b2722b8cde9288244e.jpg" width="320px">  
<br>
ログイン中はヘッダーにアプリ名のアイコン、ユーザー名、投稿するボタンの表示がされます。  
<br>
ユーザー名のタブにカーソルを合わせると＜マイページ/ログイン＞ボタンが表示されます。  
<br>
<br>

**投稿ページ**


<img src="https://i.gyazo.com/b954188029788260a3ddc6d7a0bdea24.png" width="320px">  
<br>
右上〈投稿する〉クリックし〈Image Url〉画像のURLアドレス〈text〉メッセージ入力します。〈SEND〉ボタンクリックで投稿が完了します。  
<br>
<br>

**詳細ページ**


<img src="https://i.gyazo.com/22efebc1757c1fa8ae627fd208c95fe4.png" width="320px">  
<br>
投稿画像の右側にドロップダウンのボタンがあり〈詳細〉〈編集〉〈削除〉機能が搭載されています。〈詳細〉にはコメント機能がついていて、該当の投稿についてコメントすることができます。＜コメント一覧＞に表示されます。  
<br>
<br>

**編集ページ**


<img src="https://i.gyazo.com/f7e319fc8cbef5c3904e7f35793a88f9.png" width="320px">  
<br>  
〈編集〉は該当の投稿をしたユーザーのみ表示されます。  
<br>投稿画面と同じ内容が反映されて編集ができます。  
<br>
<br>

**削除完了ページ**


<img src="https://i.gyazo.com/9451e0bb3541ab8b8bf5de76e1f7bf32.png" width="320px">  
<br>  
〈削除〉は該当の投稿をしたユーザーのみ表示させる様にしてあります。 

# GIF
![demo](https://i.gyazo.com/b5e5f864a366dd99632ff03feeec0d46.gif)
![demo](https://i.gyazo.com/66578af8cb642cb803ca342370cef494.gif)

## 実装予定の機能	
・いいね機能を実装
投稿したユーザーへ意思表示ができるようにするためです。  
<br>
 JSを利用する

・複数の画像投稿機能実装
1つの投稿に対し複数の画像を紐付ける機能の実装をしたいです。  
<br>
 jQueryを利用する


## 環境
- Rails: 6.0.0
- Ruby: 2.6.5
- DB： MySQL



## users テーブル

|Column    |Type    |Options      |
|----------|--------|-------------|
| email    | string | null: false |
| nickname | string | null: false |

### Association
- has_many :tweets
- has_many :comments


## tweets テーブル

|Column |Type        |Options                         |
|-------|------------|--------------------------------|
| text  | string     | null: false                    |
| user  | references | null: false, foreign_key: true |

### Association
- belong_to :user
- has_many :comments


## Comments テーブル

|Column    |Type     |Options                         |
|-------|------------|--------------------------------|
| text  | string     | null: false                    |
| user  | references | null: false, foreign_key: true |
| tweet | references | null: false, foreign_key: true |

### Association
- belong_to :user
- belong_to :tweet
