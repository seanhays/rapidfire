Rapidfire::Engine.routes.draw do
  resources :question_groups do
    get 'results', on: :member

    resources :questions
    resources :answer_groups
  end

  root :to => "question_groups#index"
end
