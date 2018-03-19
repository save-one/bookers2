class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name,
  uniqueness: { case_sensitive: :false },
  presence: true,
  length: { minimum: 2, maximum: 20 }

  validates :introduction,
  length: { maximum: 50 }

  has_many :books

  attachment :image

end
