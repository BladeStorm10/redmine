Rails.application.routes.draw do
  scope '/projects/:project_id' do
    resources :repositories, only: [:index, :show], controller: 'repositories' do
      member do
        get 'revisions/:rev', action: :revision, as: :revision
        get 'raw/:rev/*path', action: :raw_file, as: :raw_file
      end
    end
  end
end
