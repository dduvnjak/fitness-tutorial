class User < ActiveRecord::Base

  has_many   :articles
  has_many   :trainers
  belongs_to :user_type
  
  def self.check_user(username, password)
  	user = User.where(username: username).take
  	if user && user.password_hash == Digest::MD5.hexdigest(password)
  		user
  	else
  		nil
  	end
  end
  
end