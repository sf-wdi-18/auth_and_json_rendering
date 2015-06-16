class User < ActiveRecord::Base
  has_secure_password

  has_many :posts, dependent: :destroy

  def self.confirm(email_param, password_param)
    user = User.find_by({email: email_param})
    user.authenticate(password_param)
  end

end