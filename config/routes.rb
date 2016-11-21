Rails.application.routes.draw do
  devise_for :users
  root 'tutor#index'
  get  'tutor'         => 'tutor#index'
  get  'tutor/term'    => 'tutor#term'
  get  'tutor/inquiry' => 'tutor#inquiry'
  get  'tutor/help'    => 'tutor#help'

  resources :users, only: :show
  resources :teachers
  get 'teachers/:teacher_id/confirm'  => 'teachers#confirm'
  get 'teachers/:teacher_id/complete' => 'teachers#complete'

# teachers/t_preectures/1 などの都道府県別一覧ページをルーティング。
#   namespace :teachers do
#   get 't_prefectures/:id', to: 't_prefectures#show'
# end

  resources :students
  get 'students/:student_id/confirm'  => 'students#confirm'
  get 'students/:student_id/complete' => 'students#complete'



  # resources :users, only: :show
  # resources :teachers do
  #   collection do
  # get  'confirm'
  # get  'complete'
  #   end
  # end

  # resources :students do
  #   collection do
  # get  'confirm'
  # get  'complete'
  #   end
  # end


end
