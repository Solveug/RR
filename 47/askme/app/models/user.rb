require 'openssl'

class User < ApplicationRecord
  attr_accessor :password

  ITERATIONS = 20_000
  DIGEST = OpenSSL::Digest.new('SHA256')

  has_many :questions
  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, format: { with: EMAIL_REGEX }
  validates :password, presence: true, on: :create
  validates_confirmation_of :password
  before_save :encrypt_password
  USERNAME_REGEX = /\A[\w\d_]+\z/i.freeze
  validates :username, length: { maximum: 40 }, uniqueness: { case_sensitive: false }, format: { with: USERNAME_REGEX }

  def encrypt_password
    if password.present?
      self.password_salt = User.hash_to_string(OpenSSL::Random.random_bytes(16))
      self.password_hash = User.hash_to_string(
        OpenSSL::PKCS5.pbkdf2_hmac(
          password, password_salt, ITERATIONS, DIGEST.length, DIGEST
        )
      )
    end
  end

  def self.hash_to_string(password_hash)
    password_hash.unpack1('H*')
  end

  def self.authenticate(email, password)
    user = find_by(email: email)
    return nil unless user.present?

    hashed_password = User.hash_to_string(
      OpenSSL::PKCS5.pbkdf2_hmac(
        password, user.password_salt, ITERATIONS, DIGEST.length, DIGEST
      )
    )
    return user if user.password_hash == hashed_password

    nil
  end
end
