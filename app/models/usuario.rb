class Usuario < ApplicationRecord
  has_one :dieta
    validates :nome, presence: true
    validates :peso, presence: true
    validates :pesoIdeal, presence: true
    validates :altura, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
