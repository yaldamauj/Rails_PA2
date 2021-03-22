#has_secure_password adds password (string virtual) and password_confirmation (string virtual)
class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "not a validate emaill address"}
end
