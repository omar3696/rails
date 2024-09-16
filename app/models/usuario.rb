class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :tareas, dependent: :destroy
    #validates :nombre, presence: true
    validates :email, presence: true, uniqueness: true
end
