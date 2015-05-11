Rails.configuration.DAILYCRED_CLIENT_ID = ENV['launchy_dc_id'] || "cf45613d-1348-49f0-a740-2207ca047c89"
Rails.configuration.DAILYCRED_SECRET_KEY = ENV['launchy_dc_secret'] || "secret"

#this is used to redirect to '/thanks' after login and '/' after logout
dc_options = {
  :verbose => true,
  :after_auth => '/thanks',
  :after_unauth => '/',
  middleware: {
    persona_audience: 'http://launchy.herokuapp.com'
  }
}

Rails.configuration.DAILYCRED_OPTIONS = dc_options

