class UsersController < ApplicationController

  get '/signup' do
    if logged_in?
      redirect to '/cars'
    end
    erb :'users/signup'
  end

  post '/signup' do
    @user = User.create(username: params[:username], email: params[:email], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect '/cars'
    else
      redirect '/failure'
    end
  end




  get '/logout' do
    if !logged_in?
      redirect to '/'
    else
      session.destroy
      redirect to '/'
    end
  end 


end
