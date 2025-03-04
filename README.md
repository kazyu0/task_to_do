
## アプリケーション名

Task to do

## アプリケーション概要

小学生向けのタスクアプリです。

宿題の記録を登録や進捗確認ができます。

## URL

https://task-to-do-49vr.onrender.com

## テスト用アカウント

・Basic認証

 ID:admin

 PASS:2222

## 利用方法

1.新規投稿から学習する内容を投稿します。

2.編集ボタンを押し、進捗状況によって、未完了・進行中・完了を選択します。

3.一覧画面に表示され、進捗状況を確認できます。

## アプリケーションを作成した背景

宿題や提出物を忘れることは、学習の質を低下させるだけでなく、先生や保護者とのコミュニケーションにも悪影響を与える可能性があります。また、学習習慣の形成が重要な小学生期において、自己管理のサポートが必要だと考えこのアプリを作成しました。

## 洗い出した条件

[要件定義シート](https://docs.google.com/spreadsheets/d/1xVg-wkfdNyNMCc2VM40_0P1ScdH0lWaS/edit?gid=1997928164#gid=1997928164)

## データベース設計

 Users
| Column             | Type   | Options     |
|:--|--:|:--:|
| name               | string | null: false |
| id                 | integer| null: false, unique: true  |

## アソシエーション

・has_many :tasks

## Tasks
| Column             | Type   | Options     |
|:--|--:|:--:|
| title              | string | null: false |
| description        | text   | null: false |
| created_at         |datetime| null: false |
| updated_at         |datetime| null: false |
| id                 | integer| null: false, unique: true  |

## アソシエーション

・belongs_to :user


## ER図
[![Image from Gyazo](https://i.gyazo.com/641b1c575293533204ee4c4fbd12ab54.png)](https://gyazo.com/641b1c575293533204ee4c4fbd12ab54)
## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/53cafb9620ed9595a298e3622d750888.png)](https://gyazo.com/53cafb9620ed9595a298e3622d750888)

## 開発環境

・Ruby on Rails

・Render

・VScode

## ローカルでの動作方法

以下のコマンドを順次実行

% git clone https://github.com/kazyu0/task_to_do

% cd study_recall

% bundle install

% rails db:create

% rails db:migrate

## 工夫したポイント

・操作が分かりやすい。

・学習の進捗状況を簡単に確認できる。

## 改善点

・親がコメントできるようにユーザーの登録やコメント機能の実装

## 制作時間

・10日間

