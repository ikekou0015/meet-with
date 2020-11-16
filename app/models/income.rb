class Income < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '200万円未満' },
    { id: 3, name: '200~400万円' },
    { id: 4, name: '400~600万円' },
    { id: 5, name: '600~800万円' },
    { id: 6, name: '800~1000万円' },
    { id: 7, name: '1000~1500万円' },
    { id: 8, name: '1500~2000万円' },
    { id: 9, name: '2000万円以上' }
  ]

  include ActiveHash::Associations
  has_many :users
  end
