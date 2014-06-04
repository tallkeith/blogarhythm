Rails.application.config.middleware.use OmniAuth::Builder do
	
	configure do |config|
    	config.path_prefix = '/auth'
  	end

	provider :twitter, 'IiPjSu7EjwCyqcS51iLFAw0qL', '1pc2eptQrIdUmuQqcNMGAQelNnDfUiy2nAvGr3Wj1O3V1JRncB'
	provider :facebook, '810141098997589', '5b197b246b446e0954f24aa4c7791e9f'
	
end