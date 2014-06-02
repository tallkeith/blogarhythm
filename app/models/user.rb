class User < ActiveRecord::Base
	has_many :providers

	def self.create_with_omniauth(auth)
		user = create(name: auth['name'])
		if user.save == true
			 print "***********************************************************"
			 print user.name #name isnt saving for some reason?
			 print"************************************************************"
			end	
		return user
	end

	def self.get_provider(auth,user)
		service = ""
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |p|
			service = p.provider
		end

		if service == "facebook"
			Provider.associate_facebook(auth,user)
		end

		if service == "twitter"
			Provider.associate_twitter(auth,user)
		end
	end

end



