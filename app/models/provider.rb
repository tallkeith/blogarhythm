class Provider < ActiveRecord::Base
	has_many :providers

	def self.associate_facebook(auth,user)
		provider = create(user_id: user.id, service: auth.provider, uid: auth.uid, oauth_token: auth.credentials.token, oauth_expires_at: auth.credentials.expires_at)
		      puts "***********************************************"
		  	  print provider.service
		  	  puts "***********************************************"
		facebook(auth)
	end

	def self.associate_twitter(auth,user)
		provider = create(user_id: user.id, service: auth.provider, uid: auth.uid, oauth_token: auth.credentials.token)
			puts "***********************************************"
		  	print provider.service
		  	puts "***********************************************"
	end

	def self.facebook(auth)
		#this needs to be changed, maybe add a fb column to USER to store the object?
		@facebook ||= Koala::Facebook::API.new(auth.credentials.token)
		puts "***********************************************"
		print @facebook
	end	
end
