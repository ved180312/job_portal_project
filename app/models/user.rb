# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, authentication_keys: [:login]

  validates :username, presence: true, uniqueness: true
  has_many :job_seekers
  has_many :company

  enum role: %i[job_seeker company admin]
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.role ||= :costumer
  end

  attr_accessor :login

  def login
    @login || username || email
  end

  def self.find_for_database_authentication(warden_condition)
    conditions = warden_condition.dup
    if (login = conditions.delete(:login))
      where(conditions.to_h).where(['lower(username)= :value OR lower(email)= :value', { value: login.downcase }])
                            .first
    elsif conditions.key? :username || conditions.has_key?
      :email
      where(conditions.to_h).first
    end
  end
end
