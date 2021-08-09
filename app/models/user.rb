class User < ApplicationRecord
  enum role_level: { person: 0, company: 1 }

  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist

  has_many :posts

  validates :email, presence: true
  validates :email, uniqueness: true
end
