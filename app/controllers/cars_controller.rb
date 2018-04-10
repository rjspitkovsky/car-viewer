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

  get '/cars/:id' do
    if !logged_in?
      redirect to '/login'
    else
      @car = Car.find_by_id(params[:id])
      erb :'cars/show_car'
    end
  end

  get '/cars/:id/edit' do
    if !logged_in?
      redirect to '/login'
    else
      @car = Car.find_by_id(params[:id])
        if @car.user_id == current_user.id
          erb :'cars/edit_car'
        else
          redirect to '/cars'
        end
    end
  end


  patch '/cars/:id/edit' do
    @car = Car.find_by_id(params[:id])
    if @car.user_id == current_user.id && !params.values.include?("")
      @car.update(manufacturer: params[:manufacturer], condition: params[:condition], value: params[:value], year: params[:year])
      redirect to "/cars/#{@car.id}"
    else
      redirect to "/cars/#{params[:id]}/edit"
    end
  end

  delete '/cars/:id/delete' do
    @car = Car.find_by_id(params[:id])
    if logged_in? && current_user.id == @car.user_id
      @car.delete
      redirect to '/cars'
    else
      redirect to '/cars'
    end
  end







end
