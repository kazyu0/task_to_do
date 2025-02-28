# README

アプリケーション名
Task to do

アプリケーション概要
小学生向けのタスクアプリです。
宿題の記録を登録や進捗確認ができます。

URL
https://task-to-do-49vr.onrender.com

テスト用アカウント
・Basic認証
〇 ID：admin
〇 PASS：2222

利用方法
1.新規投稿から学習する内容を投稿します。
2.編集ボタンを押し、進捗状況によって、未完了・進行中・完了を選択します。
3.一覧画面に表示され、進捗状況を確認できます。

アプリケーションを作成した背景
宿題や提出物を忘れることは、学習の質を低下させるだけでなく、先生や保護者とのコミュニケーションにも悪影響を与える可能性があります。また、学習習慣の形成が重要な小学生期において、自己管理のサポートが必要だと考えこのアプリを作成しました。

洗い出した条件
[要件定義シート](https://docs.google.com/spreadsheets/d/1xVg-wkfdNyNMCc2VM40_0P1ScdH0lWaS/edit?gid=1997928164#gid=1997928164)

データベース設計

## Users
| Column             | Type   | Options     |
| name               | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| role               | integer| null: false |
| id                 | integer| null: false, unique: true  |

アソシエーション
has_many :tasks
has_many :submissions

## Tasks
| Column             | Type   | Options     |
| title              | string | null: false |
| description        | text   | null: false |
| deadline           | date   | null: false |
| created_at         |datetime| null: false |
| updated_at         |datetime| null: false |
| id                 | integer| null: false, unique: true  |

アソシエーション
belongs_to :user
has_many :submissions

## Submissions
| Column             | Type   | Options     |
| status             | integer| null: false |
| user_id            | integer| null: false |
| task_id            | integer| null: false |
| created_at         |datetime| null: false |
| updated_at         |datetime| null: false |
| id                 | integer| null: false, unique: true  |

アソシエーション
belongs_to :task
belongs_to :user


