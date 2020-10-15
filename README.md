# アプリケーションの概要
利用者のニーズに合った理学療法士をマッチングさせるサービスです。

# 機能一覧
・一覧表示機能
・投稿機能(画像含む)
・削除機能
・編集機能
・サインイン機能(理学療法士側)

# 技術一覧
Ruby on Rails,html,css

# テーブル設計

## users テーブル

| Column                    | Type    | Options     |
| --------                  | ------- | ----------- |
| email                     | string  | null: false |
| password                  | string  | null: false |
| name                      | string  | null: false |
| specialize_id(activehash) | integer | null: false |
| part_id(activehash)       | integer | null: false |
| experience                | integer | null: false |
| hobby                     | string  | null: false |
| word                      | string  | null: false |



### Association

- has_many :purchases
- has_many :items

## articls テーブル

| Column                       | Type       | Options                       |
| ---------------------------- | ---------- | ----------------------------- |
| name                         | string     | null: false                   |
| explanation                  | text       | null: false                   |
| price                        | integer    | null: false                   |
| category_id(active_hash)     | integer    | null: false                   |
| status_id(activehash)        | integer    | null: false                   |
| charge_id(activehash)        | integer    | null: false                   |
| area_id(activehash)          | integer    | null: false                   |
| day_id(activehash)           | integer    | null: false                   |
| user                         | references | null: false, foreign_key: true|
 ### Association

- belongs_to :user
- has_one :purchase