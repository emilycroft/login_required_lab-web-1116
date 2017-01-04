class SecretsController < ApplicationController
  def index

  end

  def show
    if current_user == nil || current_user.empty?
      redirect_to root_path
    end
  end
end
