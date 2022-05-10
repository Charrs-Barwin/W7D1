class User < ApplicationRecord
    attr_reader :password
    validates :user_name, :session_token, presence: true

    validates :password_digest, presence: { message: 'Password can\'t be blank' }
    validates :password, length: { minimum: 6, allow_nil: true }

    def reset_session_token!

    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)

    end

    def self.find_by_credentials(user_name, password)

    end
end
