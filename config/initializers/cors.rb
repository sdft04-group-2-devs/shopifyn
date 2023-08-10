Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    
    resource '*',
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head]
	
	resource '/orders', # for specific restrictions(optional)
      headers:any,
      methods: [:post]
  end
end