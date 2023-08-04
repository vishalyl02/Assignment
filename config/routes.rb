Rails.application.routes.draw do
  # Serve the React app for any unmatched routes
  get '*path', to: 'application#index', via: :all

  # Your other routes go here if any
end
