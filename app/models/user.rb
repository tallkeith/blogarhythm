class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
  has_many :providers

         def self.get_provider(auth,user)

			if auth.provider == "facebook"
				Provider.associate_facebook(auth,user)
				
			elsif auth.provider == "twitter"
				Provider.associate_twitter(auth,user)
			end
		end
end
