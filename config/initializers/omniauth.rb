Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, 'IiPjSu7EjwCyqcS51iLFAw0qL', '1pc2eptQrIdUmuQqcNMGAQelNnDfUiy2nAvGr3Wj1O3V1JRncB'
	provider :facebook, '810141098997589', '5b197b246b446e0954f24aa4c7791e9f'
	provider :instagram, 'c3efe8d70e3847a5b2c3ad06edb9654b', 'ee3aa33a59ea45878f4c620ba1c49d41'
	provider :identity
end