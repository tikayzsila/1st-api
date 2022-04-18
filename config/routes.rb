# можно использовать метод scope вместо namespace, но затем по умолчанию он будет искать UsersController и PostsController внутри каталога controllers, а не внутри controllers/api/v1

Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :posts
      resources :users
    end
  end
end
