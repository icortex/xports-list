Rails.application.routes.draw do
  resource :contacts, only: :create

  root 'pages#landing'
end
