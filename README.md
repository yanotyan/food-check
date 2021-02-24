# FOOD-CHECK

## usersテーブル

|Column |Type |Options |
|------ |---- |------- |
|nickname |string | null: false |
|profile  |text   |
|email    |string | null: false, default: ""|
|encrypted_password|string |null: false, default: ""|

### Association
- has_many :posts, dependent: :destroy

## postsテーブル

|Column  |Type|Options|
|------  |----|-------|
|user_id |references| null: false, foreign_key: true|
|name    |string | null: false |
|content |text   | 
|photo   |image  |

### Association
- has_many :posts_tags,dependent: :destroy
- has_many :tags, through:posts_tags


## posts_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|post_id |references |null: false, foreign_key: true|
|tag_id  |references |null: false, foreign_key: true|

### Association
belongs_to :posts
belongs_to :tags

## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|tag_name|string|

### Association
- has_many :posts_tags
- has_many :posts, through:posts_tags