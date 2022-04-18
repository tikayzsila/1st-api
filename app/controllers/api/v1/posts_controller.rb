# сам класс также должен быть помещен в модули Api и V1.
module Api
  module V1
    class PostsController < ApplicationController
        #  чтобы отобразить все сообщения, когда пользователь выполняет действие index, также для этого создается представление с соответствии с действием и расширением "index.json.builder"
      def index
        @posts = Post.order('created_at DESC')

        render json: @posts # as_json будет автоматически вызван на объекте @posts.
      end

    end
  end
end