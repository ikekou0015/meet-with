class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image
  has_many :meet_withs

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :body
  belongs_to :blood_type
  belongs_to :birth_place
  belongs_to :residence
  belongs_to :income
  belongs_to :occupation
  belongs_to :gender

  with_options presence: true do
    validates :nickname
    validates :gender_id, numericality: { other_than: 1 }
  end
end
