class User < ApplicationRecord
    validates :name, {presence: true, length: {maximum: 20}}
    validates :email, {presence: true, uniqueness: true, length: {maximum: 100}}
    validates :password, {length: {minimum: 6}}
    validates :password_digest, {length: {minimum: 6}}
    has_secure_password
end