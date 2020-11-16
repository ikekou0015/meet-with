class Occupation < ActiveHash::Base

  self.data = [
  { id: 1, name: '--' },
  { id: 2, name: '大学生・専門学生' }, { id: 3, name: '公務員' }, { id: 4, name: '自衛隊' },
  { id: 5, name: '消防士' }, { id: 6, name: 'コンサル' }, { id: 7, name: '経営者・役員' },
  { id: 8, name: '営業・販売' }, { id: 9, name: '医療関係' }, { id: 10, name: '弁護士' },
  { id: 11, name: '公認会計士' }, { id: 12, name: '航空関係' }, { id: 13, name: '広告・マスコミ' },
  { id: 14, name: '教育関係' }, { id: 15, name: 'IT関係' }, { id: 16, name: '食品関係' },
  { id: 17, name: '製薬' }, { id: 18, name: '保険' }, { id: 19, name: '不動産' },
  { id: 20, name: '建築関係' }, { id: 21, name: '製造業' }, { id: 22, name: 'WEB業界' },
  { id: 23, name: 'エンジニア' }, { id: 24, name: 'デザイナー' }, { id: 25, name: 'クリエイター' },
  { id: 26, name: 'サービス業' }, { id: 27, name: '調理師・栄養士' }, { id: 28, name: 'アパレル' },
  { id: 29, name: 'エンタメ' }, { id: 30, name: '芸能・モデル' }, { id: 31, name: '事務' },
  { id: 32, name: '福祉' }, { id: 33, name: '会社員' }, { id: 34, name: '自営業' },
  { id: 35, name: 'ブライダル' }, { id: 36, name: 'その他' }
]
include ActiveHash::Associations
  has_many :users
end
