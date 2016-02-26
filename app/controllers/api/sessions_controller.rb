class Api::SessionsController < Devise::SessionsController
# class Api::SessionsController < Api::ApiController

  skip_before_action :authenticate_user_from_token!

  respond_to :json

  def create
    super do |user|
      render json: user and return
    end
  end

  def resource_name
    :user
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
