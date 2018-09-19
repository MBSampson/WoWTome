class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :character

  attr_writer :login

  validates :email, uniqueness: true
  validates :account_name, presence: :true, uniqueness: { case_sensitive: false }
  validate :validate_account_name

  before_save :sanitize_fields

  def sanitize_fields
    email.downcase!
    account_name.downcase!
  end

  # -----Devise Methods-----
  def login
    @login || self.account_name || self.email
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(account_name) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      if conditions[:account_name].nil?
        where(conditions).first
      else
        where(account_name: conditions[:account_name]).first
      end
    end
  end

  def validate_account_name
    if User.where(email: account_name).exists?
      errors.add(:account_name, :invalid)
    end
  end
end
