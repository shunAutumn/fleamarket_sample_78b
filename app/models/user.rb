class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :address
  validates :nickname, :family_name_kanji, :first_name_kanji, :family_name_kana, :first_name_kana, :birthday, presence: true
  validates :family_name_kanji, :first_name_kanji, format: { with: /\A[ぁ-んァ-ン一-龥]/}
  validates :family_name_kana, :first_name_kana, format: { with: /\A[ぁ-んー－]+\z/}
end