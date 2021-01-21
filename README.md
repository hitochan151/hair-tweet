# README

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
- belongs_to :user
- has_many :comments

## Comments テーブル

|Column    |Type     |Options                         |
|-------|------------|--------------------------------|
| text  | string     | null: false                    |
| user  | references | null: false, foreign_key: true |
| tweet | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :tweet