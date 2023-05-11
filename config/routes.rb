Rails.application.routes.draw do
  root to: redirect('/gossips_page')
  resources :user_page
  resources :gossips_page
  resources :session_page
  get '/team', to: 'team_page#team'
  get '/contact', to: 'contact_page#contact'
end
