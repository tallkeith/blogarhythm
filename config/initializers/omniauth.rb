OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '	S7UQdAyYxXd0uPBBUzYmXM2xO', 'Tju0DSdKDZUfC1TYelyPHpwNu5OKT3Mmyo9XJhC1XybqJ5frMA'
end


