class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, stretches: 12
  has_many :products
  has_one :profile
  has_many :orders
  # has_many :orders, :dependent => :destroy
  # has_many :products, through: :orders
end
