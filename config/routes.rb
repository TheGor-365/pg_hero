Rails.application.routes.draw do
  root "pages#home"
  devise_for :users
  resources :posts

  authenticate :user, -> (user) { user.admin? } do
    mount PgHero::Engine, at: 'pghero'
  end
end
