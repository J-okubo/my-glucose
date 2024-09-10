# README

## users テーブル

| Column             | Type   | Options                   |
| ---------------    | -------| --------------------------|
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| profile            | text   | null: false               |

- has_many :post
- has_many :post_comments

## posts テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| content      | text       | null: false                    |

- belongs_to :user

## post_comments テーブル

| Column  | Type       | Options                        |
| --------| ---------- | ------------------------------ |
| content | text       | null: false                    |
| post    | references | null: false, foreign_key: true |

- belongs_to :user

## bloods テーブル

| Column                   | Type       | Options                        |
| ------------------------ | ---------- | ------------------------------ |
| date                     | date       | null: false                    |
| before_breakfast_glucose | integer    | null: false                    |
| after_breakfast_glucose  | integer    | null: false                    |
| before_lunch_glucose     | integer    | null: false                    |
| after_lunch_glucose      | integer    | null: false                    |
| before_dinner_glucose    | integer    | null: false                    |
| after_dinner_glucose     | integer    | null: false                    |
| remarks_section          | text       | null: false                    |

- belongs_to :user
