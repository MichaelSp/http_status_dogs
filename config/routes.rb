Rails.application.routes.draw do
  match '/:code', constraints: {code: /\d+/ }, via: :all, to: 'http_error_dogs/errors#show'
end