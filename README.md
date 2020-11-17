# テーブル設計
## users テーブル
| Column              | Type      | Options     |
| ------------------  | ------    | ----------- |
| email               | string    | null:false  |
| password            | string    | null:false  |
| birth_date          | date      | null:false  |

### Association
- has_many :meets
- has_one :show
- belongs_to :comment

## shows テーブル
| Column                 | Type      | Options      |
| ---------------------  | ------    | -----------  |
| height                 | string    | null:false   |
| body_id                | integer   | null:false   |
| blood_type_id          | integer   | null:false   |
| residence_id           | integer   | null:false   |
| birth_place_id         | integer   | null:false   |
| occupation_id          | integer   | null:false   |
| income_id              | integer   | null:false   | 
| liking                 | string    | null:false   |
| user                   | references| foreign: key true|

### Association
- belongs_to :user


## meets テーブル
| Column                 | Type       | Options            |
| ---------------------- | ------     | -------------------|
| text                   | text       | null: false        |
| user                   | references | foreign_key: true  |

### Association
- belongs_to :user
- has_many   :comments 

## comments テーブル
| Column     | Type          | Options           |
| -----------| ----------    | ----------------- |
| meet       | references    | foreign_key: true |
| user       | references    | foreign_key: true |
| text       | text          | null:      false  |
### Association
 
- belongs_to :user
- belongs_to :meet


