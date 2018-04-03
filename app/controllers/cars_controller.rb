class CarsController < ApplicationController

  get '/cars' do
    if !logged_in?
      redirect '/login'
    else
      @user = current_user
      @cars = Car.all
      erb :'cars/cars'
    end
  end

  get '/cars/new' do
    if !logged_in?
      redirect to '/login'
    else
      erb :'cars/new_car'
    end
  end

  post '/cars' do
    @user = current_user
    if !params.values.include?("")
      @car = Car.create(manufacturer: params[:manufacturer], condition: params[:condition], value: params[:value], year: params[:year], user_id: @user.id)
      redirect to '/cars'
    else
      redirect to '/cars/new'
    end
  end

end
