# мы декларируем, что все эти поля должны присутствовать в полученном JSON. Теперь такие методы, как to_json и as_json, будут использовать эту конфигурацию и возвращать желаемое содержимое.

# сериалайзеры могут быть вложенными

class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  belongs_to :user
 
  class UserSerializer < ActiveModel::Serializer
    attributes :name
  end
end