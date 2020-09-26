## DB設計
## shopテーブル

|Column|Type|Option|
|------|----|------|
|shop|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|address|string|null: false|
|url|string||

### Association
- has_many :coupon

## couponテーブル
|Column|Type|Option|
|------|----|------|
|shop_id|integer||
|saleprice|string|null: false|
|start|datetime|null: false|
|end|datetime|null: false|
|body|text||

### Association
- belongs_to :shop