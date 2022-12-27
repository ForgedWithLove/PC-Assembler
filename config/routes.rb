Rails.application.routes.draw do
  get 'hardware/cpu', to: "hardware#cpu", as: 'cpu_mod'
  get 'hardware/gpu', to: "hardware#gpu", as: 'gpu_mod'
  get 'hardware/motherboard', to: "hardware#motherboard", as: 'motherboard_mod'
  get 'hardware/memory', to: "hardware#memory", as: 'memory_mod'
  get 'hardware/psu', to: "hardware#psu", as: 'psu_mod'
  get 'hardware/disk', to: "hardware#disk", as: 'disk_mod'
  get 'hardware/cooler', to: "hardware#cooler", as: 'cooler_mod'
  get 'foradmin/manip_users'
  get 'foradmin/manip_hardware', to: "foradmin#manip_hardware", as: 'manip_hardware'
  devise_for :users
  get 'pages/welcome'
  get 'pages/configuration', to: "pages#configuration", as: 'configurator'
  get 'pages/observation', to: "pages#observation", as: 'observation'
  delete "pages/delete_pc/:id", to: "pages#delete_pc", as: 'delete_pc'
  delete "foradmin/delete_user/:id", to: "foradmin#delete_user", as: 'delete_user'
  post 'hardware/cpu', to: 'hardware#create_cpu', as: 'create_cpu'
  delete "hardware/delete_cpu/:id", to: "hardware#delete_cpu", as: 'delete_cpu'
  post 'hardware/gpu', to: 'hardware#create_gpu', as: 'create_gpu'
  delete "hardware/delete_gpu/:id", to: "hardware#delete_gpu", as: 'delete_gpu'
  post 'hardware/motherboard', to: 'hardware#create_motherboard', as: 'create_motherboard'
  delete "hardware/delete_motherboard/:id", to: "hardware#delete_motherboard", as: 'delete_motherboard'
  post 'hardware/memory', to: 'hardware#create_memory', as: 'create_memory'
  delete "hardware/delete_memory/:id", to: "hardware#delete_memory", as: 'delete_memory'
  post 'hardware/psu', to: 'hardware#create_psu', as: 'create_psu'
  delete "hardware/delete_psu/:id", to: "hardware#delete_psu", as: 'delete_psu'
  post 'hardware/disk', to: 'hardware#create_disk', as: 'create_disk'
  delete "hardware/delete_disk/:id", to: "hardware#delete_disk", as: 'delete_disk'
  post 'hardware/cooler', to: 'hardware#create_cooler', as: 'create_cooler'
  delete "hardware/delete_cooler/:id", to: "hardware#delete_cooler", as: 'delete_cooler'
  post "pages/configuration", to: "pages#creation"
  post "pages/show_pc/:id", to: "pages#show_pc", as: 'show_pc'
  patch "pages/ru", to: "pages#ru", as: 'ru'
  patch "pages/eng", to: "pages#en", as: 'eng'
  get "pages/send_computers", to: "pages#send_computers", as: 'comp_mail'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#welcome"
end
