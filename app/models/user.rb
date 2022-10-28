class User < ApplicationRecord
  authenticates_with_sorcery!
  
  #ASSOCIATIONS
  has_one :position, dependent: :destroy
  has_many :card
  has_many :rental
  has_many :report

  #VALIDATIONS
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  
  validates :email, uniqueness: true
  validates :document, uniqueness: true
  
  validates :position, presence: true, unless: -> { new_record? }
end
