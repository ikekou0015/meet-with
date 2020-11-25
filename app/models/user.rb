class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  has_one_attached :image
  has_many :meet_withs
  has_many :sns_credentials

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
  end

  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    user = User.where(email: auth.info.email).first_or_initialize(
     nickname: auth.info.name,
       email: auth.info.email
   )
   if user.persisted?
    sns.user = user
    sns.save
  end
  { user: user, sns: sns }
  end

end
