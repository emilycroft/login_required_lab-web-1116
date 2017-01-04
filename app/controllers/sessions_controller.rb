class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end
end

#
# it 'sets session[:name] if :name was given' do
#   me = 'Werner Brandes'
#   post :create, name: me
#   expect(@request.session[:name]).to eq me
# end
