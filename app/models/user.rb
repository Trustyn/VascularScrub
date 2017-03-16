class User < ActiveRecord::Base
  
    #Relationships
    has_many :notes
    has_many :forms
    has_many :carotid_forms, through: :forms
    #Accessible attributes outside of those permitted in controller
  attr_accessor :remember_token, :activation_token, :reset_token
  
    #Tells model to use BCrypt to create password digest
  has_secure_password
  
    #before action callbacks
  before_save :downcase_email
  before_create :create_activation_digest

    #Defines a regular expression for emails
  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Za-z]{2,20}\z/i
  USERNAME_REGEX = /\A[A-Za-z][A-Za-z0-9]+\z/i
  PASSWORD_REGEX = /\A^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{6,25}$\z/

  #Validations
  validates :firstname, presence: true
  
  validates :lastname, presence: true
  
  validates :username, presence: true, uniqueness: { case_sensitive: false }, 
                    length: 3..25, format: USERNAME_REGEX
 
  validates :email, presence: true, uniqueness: {case_sensitive: false }, 
                    length: 6..255, format: EMAIL_REGEX
    
  validates :password, format: { with: PASSWORD_REGEX, 
            message: "Password must be between 6 and 25 characters. It must contain 
            at least 1 uppercase, 1 lowercase character, and 1 number" },
            allow_nil: true
    
  validates :password_confirmation, presence: true, on: [:create]
  
  
  class << self
    def digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? 
             BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end
    
    def new_token
      SecureRandom.urlsafe_base64
    end
  end
  
  
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
 
  def forget
    update_attribute(:remember_digest, nil)
  end
  
  
  def authenticated?(attribute, token)
    digest = self.send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end
  
 
  def activate
    update_attribute(:activated, true)
  end
  
  
  def send_activation_email
    UserMailer.account_activation(self).deliver
  end
  
  
  def create_reset_digest
    self.reset_token = User.new_token
    update_columns(reset_digest: User.digest(reset_token),
                   reset_sent_at: Time.zone.now)
  end
  
 
  def send_password_reset_email
    UserMailer.password_reset(self).deliver
  end
  
  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end
  
#PRIVATE########################################################################
private
  def downcase_email
    self.email = email.downcase
  end
  
 
  def create_activation_digest
    self.activation_token = User.new_token
    self.activation_digest = User.digest(activation_token)
  end
end
