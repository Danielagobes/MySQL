class User < ApplicationRecord
  validates_presence_of :name, presence: true
  validates_format_of :name, :with => /\A[a-zA-Z]+\z/
  validates :name, length: { maximum: 15 },on: :create
  validates_presence_of :password, presence: true #Esta es la 2da validación
  validates_length_of :password, is: 8
  validates_presence_of :email, presence: true #Esta es la 3ra validación
  validates_uniqueness_of :email
  validates_format_of :email, with: /@/
end
