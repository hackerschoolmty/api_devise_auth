class UserSerializer < ActiveModel::Serializer
  attributes :id,
    :email,
    :token

  def token
    self.object.authentication_token
  end
end
