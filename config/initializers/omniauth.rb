OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1020328698016563', '795363197567b72898e289da5768f78d', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end