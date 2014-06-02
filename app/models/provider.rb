class Provider < ActiveRecord::Base
	has_many :providers

	def self.associate_facebook(auth,user)
		provider = create(user_id: user['id'], service: auth['provider'], uid: auth['uid'], oauth_token: auth['credentials.token'])
		      puts "***********************************************"
		  	  print provider.service
		  	  puts "***********************************************"
	end

	def self.associate_twitter(auth,user)
		provider = create(user_id: user['id'], service: auth['provider'], uid: auth['uid'], oauth_token: auth['credentails.token'])
			puts "***********************************************"
		  	print provider.service
		  	puts "***********************************************"
	end	
end
