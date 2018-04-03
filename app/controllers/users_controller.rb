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

  get '/login' do
    if logged_in?
      redirect to '/cars'
    end
    erb :'users/login'
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect to '/cars'
      else
        redirect to '/login'
      end
    end

  get '/users/:slug' do
    if logged_in?
    @user = User.find_by_slug(params[:slug])
    erb :'users/show'
  else
    redirect to '/'
  end
end

  get '/failure' do
    erb :failure
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
