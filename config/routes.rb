Rails.application.routes.draw do
  resources :cocktails, except: [:edit, :update, :destroy] do
    resources :doses, only: [:index, :new, :create, :destroy]
  end
  # list all cocktails
  # /cocktails
  # show individual cocktail -> cocktail should contain doses of ingredients
  # /cocktails/:id
  # to make new, only need a name (no doses)
  # /cocktails/new
  # to "edit" cocktail, add dose of ingredient to it
  # resources :doses
  # add dose to cocktail
  # /cocktails/:id/doses/new
  # delete dose from cocktail
  # /cocktails/:id/doses

end
