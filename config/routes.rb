Rails.application.routes.draw do

  # devise_for :users

  scope :api do
    scope :v1 do
      devise_for :users, defaults: { format: :json },
        controllers: {
          registrations: "registrations",
          sessions: 'sessions'
        }
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
