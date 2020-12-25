# README

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :users_events
- has_many :events, through: users_events

## events テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| name         | string     | null: false |
| year         | integer    | null: false |
| month        | integer    | null: false |
| day          | integer    | null: false |
| start_hour   | integer    | null: false |
| start_minute | integer    | null: false |
| cast         | text       | null: false |
| place        | string     | null: false |
| price_future | string     |
| price_today  | string     | null: false |
| ticketlink   | string     |

### Association

- has_many :users_events
- has_many :users, through: users_events

## users_events テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
