class Body < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '細め' },
    { id: 3, name: 'スレンダー' },
    { id: 4, name: '普通' },
    { id: 5, name: 'グラマー' },
    { id: 6, name: 'ぽっちゃり' },
    { id: 7, name: 'がっしり' },
    { id: 8, name: 'マッチョ' },
    { id: 9, name: '太め' }
  ]

  include ActiveHash::Associations
  has_many :users
  end
