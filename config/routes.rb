Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'

  # cette ligne reprend les 7 actions CRUD commentées ci-dessous
  resources :sheets

  # pour garder uniquement certaines actions CRUD:
  # resources :sheets, only [:index, :show]

  # 1. Lire toutes les partitions
  # get "sheets"              => "sheets#index"

  # 2. Lire une partition
  # get "sheets/:id"          => "sheets#show"

  # 3. & 4. créer une partition
  # get "sheets/new"          => "sheets#new"       #1ere etape: afficher le formulaire
  # post "sheets"             => "sheets#create"    #2eme etape: envoyer le formulaire vers la DB

  # 5. & 6. updater une partition
  # get "sheets/:id/edit"     => "sheets#edit"      #1ere etape: afficher la partition a editer
  # patch "" => "sheets/:id"  => "sheets#update"     #2eme etape: mettre a jour la partition dans la DB

  # 7. supprimer une partition
  # delete "sheets/:id"       => "sheets#destroy"






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
