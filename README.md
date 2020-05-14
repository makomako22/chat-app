# chat-app DB設計

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|-|
|image|string|-|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index, unique: true|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :messages
- has_many :group_users
- has_many :groups, through: :group_users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
### Association
- has_many :messages
- has_many :group_users
- has_many :users, through: :group_users

## group_users
|Column|Type|Options|
|------|----|-------|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user
