class User < ActiveRecord::Base
 #has_secure_password
   validates :name, presence:true,length:{minimum:5,maximum: 50}
   
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
                presence: true,
                format: { with: VALID_EMAIL_REGEX },uniqueness:true

end
