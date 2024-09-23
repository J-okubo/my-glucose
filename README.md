# README

## My-Glocose

## 概要

・糖尿病患者に向けて煩わしさを感じてしまう、血糖値管理をより「楽」に管理が
でき、当事者もしくは、その保護者やご家族の方など幅広いユーザーに使用していただく為に作られたアプリケーションです。
血糖値管理システム開発の背景としては、開発者自身が一型の糖尿病患者であり、日頃の血糖値管理がすごく煩わしく感じているため、
その煩わしい管理をITを駆使して楽で便利なものにならないか、といった背景から開発を始めました。
自身が煩わしいと考えている血糖値管理は、糖尿病患者もしくはその保護者やご家族であれば一度は感じていることなのではないかと
考えており、血糖値管理の負担を出来るだけ軽減してほいしという思いとこのシステムを同じ患者様と共有し
上手く病気と付き合っていってほしいとの思いで開発をします。

## ユーザー層

1.糖尿病患者本人、もしくはその保護者やご家族を対象とする。
2.年齢層は10代～50代を想定(スマホが操作できる方を想定)

## 利用イメージ

1.SNS風のUI/UXを実現させることにより、手軽に血糖値管理や情報収集が行える。
2.病気の事や普段の生活などの情報共有を行う事により病気へ向き合いう時間を確保する。
3.スマホ対応での設計を実現させることにより、多くのユーザーに利用者していただけるように設計する
※3については、Webアプリが完成次第着手すること。おう

## 機能

・ユーザー管理機能（ログイン/ログアウト/新規登録/API実装）
・投稿機能（血糖値管理用/情報共有用）
・投稿一覧機能
・投稿詳細機能
・投稿編集・削除機能
・コメント機能
・記事の検索機能
・いいね機能

## DB設計

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

| Column       | Type       | Options     |
| ------------ | ---------- | ------------|
| content      | text       | null: false |

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
