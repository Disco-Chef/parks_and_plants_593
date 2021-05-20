Rails.application.routes.draw do
  get 'plant_tags/new'
  resources :gardens do
    resources :plants, only: [:create]
    # POST '/gardens/:garden_id/plants'
  end

  

  resources :plants, only: [:destroy] do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :plant_tags, only: [ :new, :create ]
    # post "/plants/plant_id/plant_tags"  # CREATE PlantTags
    # get  "/plants/plant_id/plant_tags/new"  # new PlantTags
  end

end
