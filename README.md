# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null :false|
|password|string|null :false|
|email|string|null :false|

### Association
- has_many :payments
- has_many :comments
- has_many :favorites
- has_many :items
- has_one :profile
- has_one :shipping_address
- has_one :point
- has_one :profit
- has_one :sns

## profiles
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null :false, foreign_key: true|
|family_name|string|null :false|
|first_name|string|null :false|
|family_name_kana|string|null :false|
|first_name_kana|string|null :false|
|birth_year|integer|null :false|
|birth_month|integer|null :false|
|birth_day|integer|null :false|

### Association
- belongs_to :user

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null :false|
|name|string|null :false|
|discription|text|null :false|
|sellar_id|integer|null :false, foreign_key: true|
|buyer_id|integer|hull :false, foreign_key: true|
|category_id|integer|null :false, foreign_key: true|
|brand_id|integer|foreign_key: true|
|size_id|integer|foreign_key: true|
|condition_id|integer|null :false, foreign_key: true|
|delivery_price_id|integer|null :false, foreign_key: true|
|delivery_area_id|integer|null :false, foreign_key: true|
|delivery_day_id|integer|null :false, foreign_key: true|
|price|integer|null :false|

### Association
- has_many :favorites
- has_many :comments
- belongs_to :user
- belongs_to :category
- belongs_to :size
- belongs_to :brand
- belongs_to :delivery_price
- belongs_to :delivery_area
- belongs_to :delivery_day
- belongs_to :condition


## shipping_addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null :false, foreign_key: true|
|family_name|string|null :false|
|first_name|string|null :false|
|family_name_kana|string|null :false|
|first_name_kana|string|null :false|
|zip_code|integer|null :false|
|prefecutures|string|null :false|
|city|string|null :false|
|address|string|null :false|
|building_name|string||
|telephone_number|integer||

### Association
- belongs_to :user

## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null :false, foreign_key: true|
|user_image|text||
|introduction|text||
|birth_year|integer|null :false|
|birth_month|integer|null :false|
|birth_day|integer|null :false|

### Association
- belongs_to :user

## paymentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null :false, foreign_key: true|
|card_number|integer|null :false|
|expiration_month|integer|null :false|
|expiration_year|integer|null :false|
|security_code|integer|null :false|

### Association
- belongs_to :user

## snsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null :false, foreign_key: true|
|provider|string||

### Association
- belongs_to :user

## profitsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null :false, foreign_key: true|
|amount|integer||

### Association
-belongs_to :user

## pointsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null :false, foreign_key: true|
|point|integer||

### Association
-belongs_to :user


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null :false, foreign_key: true|
|item_id|integer|null :false, foreign_key: true|
|comment|text||

### Association
- belongs_to :user
- belomgs_to :item

## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null :false, foreign_key: true|
|item_id|integer|null :false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|category|string|null :false|

### Association
- has_many :items

## sizesテーブル
|Column|Type|Options|
|------|----|-------|
|size|string|null :false|

### Association
- has_many :items

## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|category|string|null :false|

### Association
- has_many :items

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand|string|null :false|

### Association
- has_many :items

## delivery_pricesテーブル
|Column|Type|Options|
|------|----|-------|
|delivery_price|integer|null :false|

### Association
- has_many :items

## delivery_areasテーブル
|Column|Type|Options|
|------|----|-------|
|delivery_area|string|null :false|

### Association
- has_many :items

## delivery_daysテーブル
|Column|Type|Options|
|------|----|-------|
|delivery_day|integer|null :false|

### Association
- has_many :items

## conditionsテーブル
|Column|Type|Options|
|------|----|-------|
|condition|string|null :false|

### Association
- has_many :items