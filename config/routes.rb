Rails3JqueryAutocompleteApp::Application.routes.draw do
  get "welcome/show"
  get 'welcome/autocomplete_brand_name'
  get 'welcome/id_element_example'

  resources :products

  root :to => "welcome#show"
end
