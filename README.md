## groups_usersテーブル

|Column|Type|options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

## Association
- belongs_to :group
- belongs_to :user

# usersテーブル

|Column|Type|options|
|------|----|-------|
|name|string|null: false, unique: true|
|mail|string|null: false|

## Association

- has_many :messages
- has_many :groups, through: groups_users

# messagesテーブル

|Column|Type|options|
|------|----|-------|
|body|text|null: false|
|image|string||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

## Association

- belongs_to :user
- belongs_to :group

# groupテーブル

|Column|Type|options|
|------|----|-------|
|name|string|nill: false|
|user_id|integer|nill: false, foreign_key: true|

## Associasion

- has_many :messages
- has_many :users, through: groups_users